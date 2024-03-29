<%--
  Created by IntelliJ IDEA.
  User: hhq
  Date: 2018/12/5
  Time: 下午5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="StyleSheet" href="css/jpetstore.css" type="text/css"
          media="screen" />

    <meta name="generator"
          content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>JPetStore Demo</title>
    <meta content="text/html; charset=windows-1252"
          http-equiv="Content-Type" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="Pragma" content="no-cache" />

    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script type="text/javascript" src="/js/JpetStore.js"/>
    <link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
    <script>
        $(function() {
            var availableTags = [
                "Amazon Parrot",
                "Finch",
                "Koi",
                "Goldfish",
                "Angelfish",
                "aTiger Shark",
                "Persian",
                "Manx",
                "Bulldog",
                "Chihuahua",
                "Dalmation",
                "Poodle",
                "Golden Retriever",
                "Labrador Retriever",
                "Iguana",
                "Rattlesnake"
            ];
            $( "#search1" ).autocomplete({
                source: availableTags
            });
        });
    </script>

</head>

<body>

<div id="Header">

    <div id="Logo">
        <div id="LogoContent">
            <a href="main"><img src="images/logo-topbar.gif" /></a>
        </div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <a href="viewCart">
                <img align="middle" name="img_cart" src="images/cart.gif" />
            </a>
                <img align="middle" src="images/separator.gif" />
            <s:if test="#session.account != null">
            <a href="signonOff">Sign Out</a>
                <img align="middle" src="images/separator.gif" />
            <a href="editForm">My Account</a>
            </s:if>
            <s:if test="#session.account == null">
                <a href="signinForm">Sign In</a>
            </s:if>
                <img align="middle" src="images/separator.gif" />
            <a href="../help.html">?</a>
                <%--<img align="middle" src="images/separator.gif" />--%>
            <%--<a class="button" href="/viewLog"> View LogFilter</a>--%>
        </div>
    </div>

    <div id="Search">
        <div id="SearchContent">
            <form action="ViewSearch" method="post">
                <input type="text" name="keyword" size="14" id="search1"/>
                <input type="submit" name="searchProducts" value="Search" />
            </form>
        </div>
    </div>

    <div id="QuickLinks">
        <a href="viewCategory?categoryId=FISH">
            <img src="images/sm_fish.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=DOGS">
            <img src="images/sm_dogs.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=REPTILES">
            <img src="images/sm_reptiles.gif" /></a>
        <img
            src="images/separator.gif" />
        <a href="viewCategory?categoryId=CATS">
            <img src="images/sm_cats.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=BIRDS">
            <img src="images/sm_birds.gif" />
        </a>
    </div>

</div>

<div id="Content">
</div>