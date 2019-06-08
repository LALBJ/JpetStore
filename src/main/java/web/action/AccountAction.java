package web.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import domain.Account;
import service.AccountService;

import java.util.Map;


public class AccountAction extends ActionSupport implements Action, ModelDriven<Account> {
    private Account account = new Account();
    private AccountService accountService;

    public Account getAccount(){return account;}

    public void setAccount(Account account){this.account = account;}

    @Override
    public Account getModel() {
        return account;
    }

    @Override
    public String execute() throws Exception{
        return "success";
    }

    public String signIn() throws Exception{
        ActionContext context = ActionContext.getContext();
        Map session = context.getSession();
        Map request = (Map)context.get("request");
        accountService = new AccountService();

        Account result = accountService.signIn(account);

        if (result != null){
            session.put("account", result);
        }else {
            request.put("msg", "Your Username or Password is Wrong!");
            return "failed";
        }
        return "success";
    }

    @Override
    public void validate() {
        System.out.println("校验器成功校验");
        if ( account.getPassword().length() == 0 ){
            addFieldError( "password", getText("密码不能为空") );
        }
        if ( account.getUsername().length() == 0 ){
            addFieldError( "username", getText("用户名不能为空") );
        }
    }
}
