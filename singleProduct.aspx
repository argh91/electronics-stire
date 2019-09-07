﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="SingleProduct.aspx.cs" Inherits="Product" %>

<%@ Register Src="~/manage/UserControls/productDetail.ascx" TagPrefix="uc1" TagName="productDetail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">

    <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
        <link href="prode/Seeeduino%20Stalker%20V3.1_files/animate.css" rel="stylesheet" />
        <link href="prode/Seeeduino%20Stalker%20V3.1_files/public.css" rel="stylesheet" />
        <link href="prode/Seeeduino%20Stalker%20V3.1_files/main.css" rel="stylesheet" />
        <link href="prode/Seeeduino%20Stalker%20V3.1_files/reset.css" rel="stylesheet" />
        <link href="prode/Seeeduino%20Stalker%20V3.1_files/font-awesome.min.css" rel="stylesheet" />
        <script type="text/javascript" src="Plugins/elevatezoom-master/jquery.elevateZoom-3.0.8.min.js"></script>
        <script type="text/javascript" src="Plugins/elevatezoom-master/jquery.elevatezoom.js"></script>
         <style type="text/css">
        .at-icon {
            fill: #fff;
            border: 0;
        }

        .at-icon-wrapper {
            display: inline-block;
            overflow: hidden;
        }

        a .at-icon-wrapper {
            cursor: pointer;
        }

        .at-rounded, .at-rounded-element .at-icon-wrapper {
            border-radius: 12%;
        }

        .at-circular, .at-circular-element .at-icon-wrapper {
            border-radius: 50%;
        }

        .addthis_32x32_style .at-icon {
            width: 2pc;
            height: 2pc;
        }

        .addthis_24x24_style .at-icon {
            width: 24px;
            height: 24px;
        }

        .addthis_20x20_style .at-icon {
            width: 20px;
            height: 20px;
        }

        .addthis_16x16_style .at-icon {
            width: 1pc;
            height: 1pc;
        }

        #at16lb {
            display: none;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1001;
            background-color: #000;
            opacity: .001;
        }

        #at16pc, #at16pi, #at16pib, #at_complete, #at_email, #at_error, #at_share, #at_success {
            position: static !important;
        }

        .at15dn {
            display: none;
        }

        .at15a {
            border: 0;
            height: 0;
            margin: 0;
            padding: 0;
            width: 230px;
        }

        .atnt {
            text-align: center !important;
            padding: 6px 0 0 !important;
            height: 24px !important;
        }

            .atnt a {
                text-decoration: none;
                color: #36b;
            }

                .atnt a:hover {
                    text-decoration: underline;
                }

        #at15s, #at16nms, #at16p, #at16p form input, #at16p label, #at16p textarea, #at16recap, #at16sas, #at_msg, #at_share .at_item {
            font-family: arial,helvetica,tahoma,verdana,sans-serif !important;
            font-size: 9pt !important;
            outline-style: none;
            outline-width: 0;
            line-height: 1em;
        }

            * html #at15s.mmborder {
                position: absolute !important;
            }

            #at15s.mmborder {
                position: fixed !important;
                width: 250px !important;
            }

        #at15s {
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpiZGBgaGAgAjAxEAlGFVJHIUCAAQDcngCUgqGMqwAAAABJRU5ErkJggg==);
            float: none;
            line-height: 1em;
            margin: 0;
            overflow: visible;
            padding: 5px;
            text-align: left;
            position: absolute;
        }

            #at15s a, #at15s span {
                outline: 0;
                direction: ltr;
                text-transform: none;
            }

            #at15s .at-label {
                margin-left: 5px;
            }

            #at15s .at-icon-wrapper, #at16ps .at-icon-wrapper {
                width: 1pc;
                height: 1pc;
                vertical-align: middle;
            }

            #at15s .at-icon, #at16ps .at-icon {
                width: 1pc;
                height: 1pc;
            }

        .at4-icon {
            display: inline-block;
            background-repeat: no-repeat;
            background-position: top left;
            margin: 0;
            overflow: hidden;
            cursor: pointer;
        }

        .addthis_16x16_style .at4-icon, .addthis_16x16_white_style .at4-icon, .addthis_default_style .at4-icon, .at4-icon, .at-16x16 {
            width: 1pc;
            height: 1pc;
            line-height: 1pc;
            background-size: 1pc !important;
        }

        .addthis_32x32_style .at4-icon, .addthis_32x32_white_style .at4-icon, .at-32x32 {
            width: 2pc;
            height: 2pc;
            line-height: 2pc;
            background-size: 2pc !important;
        }

        .addthis_24x24_style .at4-icon, .addthis_24x24_white_style .at4-icon, .at-24x24 {
            width: 24px;
            height: 24px;
            line-height: 24px;
            background-size: 24px !important;
        }

        .addthis_20x20_style .at4-icon, .addthis_20x20_white_style .at4-icon, .at-20x20 {
            width: 20px;
            height: 20px;
            line-height: 20px;
            background-size: 20px !important;
        }

        .at4-icon.circular, .circular .at4-icon, .circular.aticon {
            border-radius: 50%;
        }

        .at4-icon.rounded, .rounded .at4-icon {
            border-radius: 4px;
        }

        .at4-icon-left {
            float: left;
        }

        #at15s .at4-icon {
            text-indent: 20px;
            padding: 0;
            overflow: visible;
            white-space: nowrap;
            background-size: 1pc;
            width: 1pc;
            height: 1pc;
            background-position: top left;
            display: inline-block;
            line-height: 1pc;
        }

        .addthis_vertical_style .at4-icon, .at4-follow-container .at4-icon, .sortable-list-container .at4-icon {
            margin-right: 5px;
        }

        html > body #at15s {
            width: 250px !important;
        }

            #at15s.atm {
                background: none !important;
                padding: 0 !important;
                width: 10pc !important;
            }

            #at15s.atiemode2 {
                width: 252px !important;
            }

        #at15s_inner {
            background: #fff;
            border: 1px solid #fff;
            margin: 0;
        }

        #at15s_head {
            position: relative;
            background: #f2f2f2;
            padding: 4px;
            cursor: default;
            border-bottom: 1px solid #e5e5e5;
        }

        .at15s_head_success {
            background: #cafd99 !important;
            border-bottom: 1px solid #a9d582 !important;
        }

            .at15s_head_success a, .at15s_head_success span {
                color: #000 !important;
                text-decoration: none;
            }

        #at15s_brand, #at15sptx, #at16_brand {
            position: absolute;
        }

        #at15s_brand {
            top: 4px;
            right: 4px;
        }

        .at15s_brandx {
            right: 20px !important;
        }

        a#at15sptx {
            top: 4px;
            right: 4px;
            text-decoration: none;
            color: #4c4c4c;
            font-weight: 700;
        }

        #at15s.atiemode2 a#at15sptx {
            right: 8px;
        }

        #at15sptx:hover {
            text-decoration: underline;
        }

        #at16_brand {
            top: 5px;
            right: 30px;
            cursor: default;
        }

        #at_hover {
            padding: 4px;
        }

            #at_hover .at_item, #at_share .at_item {
                background: #fff !important;
                float: left !important;
                color: #4c4c4c !important;
            }

                #at_share .at_item .at-icon-wrapper {
                    margin-right: 5px;
                }

            #at_hover .at_bold {
                font-weight: 700;
                color: #000 !important;
            }

        #at16nms, #at16sas {
            padding: 4px 5px;
        }

        #at16nms {
            display: none;
        }

        #at16sas {
            clear: left;
            padding-top: 1pc;
            padding-bottom: 1pc;
        }

        #at_hover .at_item {
            width: 7pc !important;
            padding: 2px 3px !important;
            margin: 1px;
            text-decoration: none !important;
        }

            #at_hover .at_item.atiemode2 {
                width: 114px !important;
            }

            #at_hover .at_item.athov, #at_hover .at_item:focus, #at_hover .at_item:hover {
                margin: 0 !important;
            }

            #at16ps .at_item:focus, #at_hover .at_item.athov, #at_hover .at_item:focus, #at_hover .at_item:hover, #at_share .at_item.athov, #at_share .at_item:hover {
                background: #f2f2f2 !important;
                border: 1px solid #e5e5e5;
                color: #000 !important;
                text-decoration: none;
            }

        .ipad #at_hover .at_item:focus {
            background: #fff !important;
            border: 1px solid #fff;
        }

        #at_email15 {
            padding-top: 5px;
        }

        .at15e_row {
            height: 28px;
        }

            .at15e_row label, .at15e_row span {
                padding-left: 10px !important;
                display: block !important;
                width: 60px !important;
                float: left !important;
            }

            .at15e_row input, .at15e_row textarea {
                display: block !important;
                width: 150px !important;
                float: left !important;
                background: #fff !important;
                border: 1px solid #ccc !important;
                color: #333 !important;
                font-size: 11px !important;
                font-weight: 400 !important;
                padding: 0 !important;
            }

        #at_email input, #at_email label, #at_email textarea {
            font-size: 11px !important;
        }

        #at_email #at16meo {
            margin: 15px 0 0 2px;
        }

        #at16meo span {
            float: left;
            margin-right: 5px;
            padding-top: 4px;
        }

        #at16meo a {
            float: left;
            margin: 0;
        }

        #at_sending {
            top: 130px;
            left: 110px;
            position: absolute;
            text-align: center;
        }

            #at_sending img {
                padding: 10px;
            }

        .at15t {
            display: block !important;
            height: 1pc !important;
            line-height: 1pc !important;
            padding-left: 20px !important;
            background-position: 0 0;
            text-align: left;
        }

        .addthis_button, .at15t {
            cursor: pointer;
        }

        .addthis_toolbox a.at300b, .addthis_toolbox a.at300m {
            width: auto;
        }

        .addthis_toolbox a {
            margin-bottom: 5px;
            line-height: initial;
        }

        .addthis_toolbox.addthis_vertical_style {
            width: 200px;
        }

        .addthis_toolbox.addthis_close_style .addthis_button_google_plusone {
            width: 65px;
            overflow: hidden;
        }

        .addthis_toolbox.addthis_close_style .addthis_button_facebook_like {
            width: 85px;
            overflow: hidden;
        }

        .addthis_toolbox.addthis_close_style .addthis_button_tweet {
            width: 62px;
            overflow: hidden;
        }

        .addthis_button_facebook_like .fb_iframe_widget {
            line-height: 100%;
        }

        .addthis_button_facebook_like iframe.fb_iframe_widget_lift {
            max-width: none;
        }

        .addthis_toolbox a.addthis_button_counter, .addthis_toolbox a.addthis_button_facebook_like, .addthis_toolbox a.addthis_button_facebook_send, .addthis_toolbox a.addthis_button_facebook_share, .addthis_toolbox a.addthis_button_foursquare, .addthis_toolbox a.addthis_button_google_plusone, .addthis_toolbox a.addthis_button_linkedin_counter, .addthis_toolbox a.addthis_button_pinterest_pinit, .addthis_toolbox a.addthis_button_stumbleupon_badge, .addthis_toolbox a.addthis_button_tweet {
            display: inline-block;
        }

        .at-share-tbx-element .google_plusone_iframe_widget > span > div {
            vertical-align: top !important;
        }

        .addthis_toolbox span.addthis_follow_label {
            display: none;
        }

        .addthis_toolbox.addthis_vertical_style span.addthis_follow_label {
            display: block;
            white-space: nowrap;
        }

        .addthis_toolbox.addthis_vertical_style a {
            display: block;
        }

        .addthis_toolbox.addthis_vertical_style.addthis_32x32_style a {
            line-height: 2pc;
            height: 2pc;
        }

        .addthis_toolbox.addthis_vertical_style .at300bs {
            margin-right: 4px;
            float: left;
        }

        .addthis_toolbox.addthis_20x20_style span {
            line-height: 20px;
            *height: 20px;
        }

        .addthis_toolbox.addthis_32x32_style span {
            line-height: 2pc;
            *height: 2pc;
        }

        .addthis_toolbox.addthis_pill_combo_style .addthis_button_compact .at15t_compact, .addthis_toolbox.addthis_pill_combo_style a {
            float: left;
        }

            .addthis_toolbox.addthis_pill_combo_style a.addthis_button_tweet {
                margin-top: -2px;
            }

        .addthis_toolbox.addthis_pill_combo_style .addthis_button_compact .at15t_compact {
            margin-right: 4px;
        }

        .addthis_default_style .addthis_separator {
            margin: 0 5px;
            display: inline;
        }

        div.atclear {
            clear: both;
        }

        .addthis_default_style .addthis_separator, .addthis_default_style .at4-icon, .addthis_default_style .at300b, .addthis_default_style .at300bo, .addthis_default_style .at300bs, .addthis_default_style .at300m {
            float: left;
        }

        .at300b img, .at300bo img {
            border: 0;
        }

        a.at300b .at4-icon, a.at300m .at4-icon {
            display: block;
        }

        .addthis_default_style .at300b, .addthis_default_style .at300bo, .addthis_default_style .at300m {
            padding: 0 2px;
        }

        .at300b, .at300bo, .at300bs, .at300m {
            cursor: pointer;
        }

        .addthis_button_facebook_like.at300b:hover, .addthis_button_facebook_like.at300bs:hover, .addthis_button_facebook_send.at300b:hover, .addthis_button_facebook_send.at300bs:hover {
            opacity: 1;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
            filter: alpha(opacity=100);
        }

        .addthis_20x20_style .at15t, .addthis_20x20_style .at300bs, .addthis_20x20_style .dummy .at300bs {
            overflow: hidden;
            display: block;
            height: 20px !important;
            width: 20px !important;
            line-height: 20px !important;
        }

        .addthis_32x32_style .at15t, .addthis_32x32_style .at300bs, .addthis_32x32_style .dummy .at300bs {
            overflow: hidden;
            display: block;
            height: 2pc !important;
            width: 2pc !important;
            line-height: 2pc !important;
        }

        .at300bs {
            background-position: 0 0;
        }

        .at16nc, .at300bs {
            overflow: hidden;
            display: block;
            height: 1pc;
            width: 1pc;
            line-height: 1pc !important;
        }

        .at16t {
            padding-left: 20px !important;
            width: auto;
            cursor: pointer;
            text-align: left;
            overflow: visible !important;
        }

        #at_feed {
            display: none;
            padding: 10px;
            height: 300px;
        }

            #at_feed span {
                margin-bottom: 10px;
                font-size: 9pt;
            }

            #at_feed div {
                width: 102px !important;
                height: 26px !important;
                line-height: 26px !important;
                float: left !important;
                margin-right: 68px;
            }

                #at_feed div.at_litem {
                    margin-right: 0;
                }

            #at_feed a {
                margin: 10px 0;
                height: 17px;
                line-height: 17px;
            }

            #at_feed.atused .fbtn {
                background: url(//s7.addthis.com/static/r05/feed00.gif) no-repeat;
                float: left;
                width: 102px;
                cursor: pointer;
                text-indent: -9000px;
            }

            #at_feed .fbtn.bloglines {
                background-position: 0 0 !important;
                width: 94px;
                height: 20px !important;
                line-height: 20px !important;
                margin-top: 8px !important;
            }

            #at_feed .fbtn.yahoo {
                background-position: 0 -20px !important;
            }

            #at_feed .fbtn.newsgator, .fbtn.newsgator-on {
                background-position: 0 -37px !important;
            }

            #at_feed .fbtn.technorati {
                background-position: 0 -71px !important;
            }

            #at_feed .fbtn.netvibes {
                background-position: 0 -88px !important;
            }

            #at_feed .fbtn.pageflakes {
                background-position: 0 -141px !important;
            }

            #at_feed .fbtn.feedreader {
                background-position: 0 -172px !important;
            }

            #at_feed .fbtn.newsisfree {
                background-position: 0 -207px !important;
            }

            #at_feed .fbtn.google {
                background-position: 0 -54px !important;
                width: 78pt;
            }

            #at_feed .fbtn.winlive {
                background-position: 0 -105px !important;
                width: 75pt;
                height: 19px !important;
                line-height: 19px;
                margin-top: 9px !important;
            }

            #at_feed .fbtn.mymsn {
                background-position: 0 -158px;
                width: 71px;
                height: 14px !important;
                line-height: 14px !important;
                margin-top: 9pt !important;
            }

            #at_feed .fbtn.aol {
                background-position: 0 -189px;
                width: 92px;
                height: 18px !important;
                line-height: 18px !important;
            }

        .addthis_default_style .at15t_compact, .addthis_default_style .at15t_expanded {
            margin-right: 4px;
        }

        #at16clb {
            font-size: 16pt;
            font-family: verdana bold,verdana,arial,sans-serif;
        }

        #at_share .at_item {
            width: 123px !important;
            padding: 4px;
            margin-right: 2px;
            border: 1px solid #fff;
        }

        #at16pm {
            background: #fff;
            width: 298px;
            height: 380px;
            text-align: left;
            border-right: 1px solid #ccc;
            position: static;
        }

        #at16pcc, #at16pccImg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            margin: 0 auto;
            font-size: 10px !important;
            color: #4c4c4c;
            padding: 0;
            z-index: 10000001;
            overflow: visible;
        }

        #at16pccImg {
            height: 100%;
        }

        #at16abifc {
            overflow: hidden;
            margin: 0;
            top: 10px;
            left: 10px;
            height: 355px;
            width: 492px;
            position: absolute;
            border: 0;
        }

            #at16abifc iframe {
                border: 0;
                position: absolute;
                height: 380px;
                width: 516px;
                top: -10px;
                left: -10px;
            }

        * html div#at16abifc.atiemode2 {
            height: 374px;
            width: 482px;
        }

        * html #at16abifc iframe {
            height: 23pc;
            left: -10px;
            top: -10px;
            overflow: hidden;
        }

        #at16p {
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpiZGBgaGAgAjAxEAlGFVJHIUCAAQDcngCUgqGMqwAAAABJRU5ErkJggg==);
            z-index: 10000001;
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300px;
            padding: 10px;
            margin: 0 auto;
            margin-top: -185px;
            margin-left: -155px;
            font-family: arial,helvetica,tahoma,verdana,sans-serif;
            font-size: 9pt;
            color: #5e5e5e;
        }

        #at_share {
            margin: 0;
            padding: 0;
        }

        #at16ps {
            overflow-y: scroll;
            height: 19pc;
            padding: 5px;
        }

        a#at16pit {
            position: absolute;
            top: 37px;
            right: 10px;
            display: block;
            background: url(data:image/gif;base64,R0lGODlhEAAUAKIFAKqqquHh4cLCwszMzP///////wAAAAAAACH5BAEAAAUALAAAAAAQABQAAAMtOLqsAqWQSSsN0OoLthfeNoTaSFbmOaUqe7okHMoeLaqUXeITiGM/SGM4eEQSADs=) no-repeat;
            width: 1pc;
            height: 20px;
            line-height: 19px;
            margin-right: -17px;
            text-align: center;
            overflow: hidden;
            color: #36b;
        }

        #at16pi {
            background: #e5e5e5;
            text-align: left;
            border: 1px solid #ccc;
            border-bottom: 0;
        }

            #at16pi a {
                text-decoration: none;
                color: #36b;
            }

        #at16p #at16abc {
            margin-left: 2px !important;
        }

        #at16pi a:hover {
            text-decoration: underline;
        }

        #at16pt {
            position: relative;
            background: #f2f2f2;
            height: 13px;
            padding: 5px 10px;
        }

            #at16pt a, #at16pt h4 {
                font-weight: 700;
            }

            #at16pt h4 {
                display: inline;
                margin: 0;
                padding: 0;
                font-size: 9pt;
                color: #4c4c4c;
                cursor: default;
            }

            #at16pt a {
                position: absolute;
                top: 5px;
                right: 10px;
                color: #4c4c4c;
                text-decoration: none;
                padding: 2px;
            }

                #at15sptx:focus, #at16pt a:focus {
                    outline: thin dotted;
                }

        #at16pc form {
            margin: 0;
        }

            #at16pc form label {
                display: block;
                font-size: 11px;
                font-weight: 700;
                padding-bottom: 4px;
                float: none;
                text-align: left;
            }

                #at16pc form label span {
                    font-weight: 400;
                    color: #4c4c4c;
                    display: inline;
                }

        #at_email form .abif {
            width: 17pc !important;
        }

        #at_email textarea {
            height: 55px !important;
            word-wrap: break-word;
        }

        * html #at_email textarea, :first-child + html #at_email textarea {
            height: 42px !important;
        }

        #at_email label {
            width: 220px;
        }

        #at_email input, #at_email textarea {
            background: #fff;
            border: 1px solid #bbb;
            width: 17pc !important;
            margin: 0;
            margin-bottom: 8px;
            font-weight: 400;
            padding: 3px !important;
            font-family: arial,helvetica,tahoma,verdana,sans-serif;
            font-size: 11px;
            line-height: 1.4em;
            color: #333;
        }

        #at_email form .atfxmode2 {
            width: 279px !important;
        }

        #at16pc form .at_ent {
            color: #333 !important;
        }

        #at16pc textarea {
            height: 3pc;
        }

            #at16pc form input:focus, #at16pc textarea:focus {
                background: ivory;
                color: #333;
            }

        #at16p .atbtn, #at16recap .atbtn {
            background: #fff;
            border: 1px solid #b5b5b5;
            width: 60px !important;
            padding: 2px 4px;
            margin: 0;
            margin-right: 2px !important;
            font-size: 11px !important;
            font-weight: 700;
            color: #333;
            cursor: pointer;
        }

            #at16p .atbtn:focus, #at16p .atbtn:hover, #at16recap .atbtn:focus, #at16recap .atbtn:hover {
                border-color: #444;
                color: #06c;
            }

        #at16p .atrse, #at16recap .atrse {
            font-weight: 400 !important;
            color: #666;
            margin-left: 2px !important;
        }

        #atsb .atbtn {
            width: 78px !important;
            margin: 0 !important;
        }

        #at_email #ateml {
            text-align: right;
            font-size: 10px;
            color: #999;
        }

        #at16pc {
            height: 343px !important;
            font-size: 11px;
            text-align: left;
            color: #4c4c4c;
        }

        #at_email {
            padding: 5px 10px;
        }

        #at16pc .tmsg {
            padding: 4px 2px;
            text-align: right;
        }

        #at16psf {
            position: relative;
            background: #f2f2f2 url(data:image/gif;base64,R0lGODlhGQEVAMQYAGZmZuDg4Ozs7MjIyMzMzPj4+LOzs3BwcMbGxsvLy5+fn/X19djY2IODg+bm5paWlnl5eeLi4oyMjKmpqdXV1dvb28/Pz////////wAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAABgALAAAAAAZARUAAAX/ICaOGJFYaKqubOu+cCzPdG3feK7vPJwQpOBoEChcjsikcslsOp/QqHRKrVqv2Kx2Gy0EBkKRgMEtm8/otHrNTjMEQYGjTa/b7/h82gEfVfSAgYKDhGcVQ0sLBhAAEAYLhZGSk5RqYBgBSgsNAA0GnA2QlaOkpaZHASVGSQYACEgIABOntLW2eAUmSxASShIHt8HCw1snSwAGSq3EzM3OSyhLBw9KD8DP2Nm30UoKrrAACtrj5KMWCYmcCgbeAAcR5fHygT+rSQvtAA8A7vDz/wDV5MIUJVa/gAgTZkmFYYAUg70USpz45BKGPwUPiKPIseOhEXI6ihzphE8cMiRTMI58E6ZhEZUwEXqx2LIEAwsUKujcybOnz59AgwodSrSo0aNIkypdyrSpU58ofoQJAQA7) no-repeat center center;
            border-bottom: 1px solid #ccc;
            height: 20px;
            padding: 4px 10px;
            text-align: center;
        }

            * html #at16psf input, :first-child + html #at16psf input {
                padding: 0;
            }

                #at16psf input, #at16psf input:focus {
                    background: #fff;
                    border: none;
                    width: 220px;
                    margin: 2px 0 0;
                    color: #666;
                    outline-style: none;
                    outline-width: 0;
                    padding: 2px 0 0;
                    line-height: 9pt;
                    font-family: arial,helvetica,tahoma,verdana,sans-serif;
                    font-size: 9pt;
                }

        #at16pcc .at_error, #at16recap .at_error {
            background: #f26d7d;
            border-bottom: 1px solid #df5666;
            padding: 5px 10px;
            color: #fff;
        }

        #at16pcc #at_success {
            background: #d0fbda;
            border-bottom: 1px solid #a8e7b7;
            padding: 5px 10px;
            color: #4c4c4c;
        }

        #at_complete {
            font-size: 13pt;
            color: #47731d;
            text-align: center;
            padding-top: 130px;
            height: 13pc !important;
            width: 472px;
        }

        #at_s_msg {
            margin-bottom: 10px;
        }

        .atabout {
            left: 55px;
        }

        .ac-about {
            right: 20px;
        }

        .at_baa {
            display: block;
            overflow: hidden;
            outline: 0;
        }

        #at15s #at16pf a {
            top: 1px;
        }

        #at16pc form #at_send {
            width: 5pc !important;
        }

        #at16pp {
            color: #4c4c4c;
            position: absolute;
            top: 9pt;
            right: 9pt;
            font-size: 11px;
        }

            #at16pp label {
                font-size: 11px !important;
            }

        #at16ppc {
            padding: 10px;
            width: 179px;
        }

        #at16pph {
            padding: 5px 0 10px;
        }

            #at16pph select {
                margin: 5px 0 8px;
            }

        #at16pp .atinp {
            width: 156px;
        }

        #at16ppb {
            background: #fff;
            border: 1px solid #ccc;
            height: 274px;
        }

        #at16ep {
            height: 1pc;
            padding: 8px;
        }

            #at16ep a {
                display: block;
                height: 1pc;
                line-height: 1pc;
                padding-left: 22px;
                margin-bottom: 8px;
                font-size: 9pt;
            }

                #at16ep a.at_gmail {
                    background: url(data:image/gif;base64,R0lGODlhEAAQALMPAPKqo95TU+NkY/TCwP74+PbX1/zo59wtJ/nx7uZ7fvnRzfCTgvq2td9DQf///////yH5BAEAAA8ALAAAAAAQABAAAARi8MlJq700hMS6/4vWNIdQOERKOMgyvqSgOLRjJAe8CUcw0ApeYyF4DQpCwCDQGyCKo59BGDtNjbRBIvazQRtSxgCwGDAMrO/AcK7ZztcRoO1+B43oOs0Qb8w/gAxFGISFFREAOw==) no-repeat left;
                }

                #at16ep a.at_hotmail {
                    background: url(data:image/gif;base64,R0lGODlhEAAQAMQfAP7XFG7B4/zjl/JZIAm7TK7V7v3FY/aLRGDNhOqmkA2ql/2YJvfr2Pn7++9vWtXe6/jQvOfw9funZg2EzEWv3zil0heg0zDCbESHx9PpxY6TvJ3QpPJtQf7+/v///////yH5BAEAAB8ALAAAAAAQABAAAAWO4CeOpNhAUFeuzDEMiRepK/S+XDBVjzd6kAWHc3tMjpVZhyE8cByvDsViOQYehsPCSeR8IpQpFZMwGCQHl/dToAQoionGLEHDRJ5CoHJRkM92ED8FCgQEGHNoDgsCJB4XhgpzZwsAjSQZFxcIGgCengwlHRsIpQKfAg0rHQiGEacGqisfDZsdtzSzHz4rIQA7) no-repeat left;
                }

                #at16ep a.at_yahoo {
                    background: url(data:image/gif;base64,R0lGODlhEAAQAKIHAPylpevx8bsICNJfX/jQ0Kahof8AAP///yH5BAEAAAcALAAAAAAQABAAAANJeLrc/jAuAmolcQhjhBiBBRDDAChAVxzE5g3csKRGQQpFqDL0fsCCQCOFUwR8vI7wECgtjQDg6CfA8DxYmWbVCHi/TK9kTC4zEgA7) no-repeat left;
                }

        #at16ppf p#atsb {
            padding-top: 20px;
            font-size: 10px;
        }

        #at16abr {
            margin-top: 10px;
        }

            #at16abr input {
                padding: 0;
                margin: 0;
                margin-right: 5px;
            }

        #at16ppso {
            display: none;
            text-align: right;
            margin-top: 2px;
        }

        #at16ppa {
            background: #fff;
            border: 1px solid #ccc;
            height: 228px;
            width: 178px;
            overflow: auto;
        }

            #at16ppa a {
                display: block;
                white-space: nowrap;
                padding: 4px 8px;
                font-size: 9pt !important;
            }

        #at16eatdr {
            position: absolute;
            background: #fff;
            border-top: 0;
            max-height: 110px;
            overflow: auto;
            z-index: 500;
            top: 129px;
            left: 21px;
            width: 277px;
        }

        * html #at_email #at16eatdr, :first-child + html #at_email #at16eatdr {
            top: 115px !important;
            width: 17pc !important;
        }

        #at16eatdr a {
            display: block;
            overflow: hidden;
            border-bottom: 1px dotted #eee;
            padding: 4px 8px;
        }

            #at16eatdr a.hover, #at16eatdr a:hover {
                background: #e0eefa;
                text-decoration: none;
                color: #333;
            }

        #at_pspromo {
            height: 130px;
            padding-top: 10px;
        }

        #at15psp, #at_pspromo {
            width: 205px;
            padding-left: 5px;
        }

        #at_testpromo {
            font-size: 9pt;
            width: 220px;
            display: none;
        }

        .atm-i #at_pspromo {
            height: 150px;
        }

        .atm-i #at_pspromo, .atm-i #at_testpromo {
            width: 140px;
        }

        #at_testpromo input {
            width: 200px;
        }

        #at_promo .at-promo-content, #at_testpromo .at-promo-content {
            margin-top: 9pt;
        }

        #at_promo .at-promo-btn, #at_testpromo .at-promo-btn {
            padding-top: 10px;
        }

        #at_promo h4, #at_testpromo h4 {
            font-family: arial,helvetica,tahoma,verdana,sans-serif;
            background: 0;
            font-size: 14px;
            font-weight: 700;
            margin: 0 0 4px;
            padding: 0;
            line-height: 18px;
            height: 36px;
        }

        .atm-i #at_promo h4, .atm-i #at_testpromo h4 {
            height: 66px;
        }

        #at_testpromo h4 {
            font-size: 13.5px;
        }

        #at_promo h4 sup {
            font-size: 11px;
            color: #ee6a44;
        }

        #at_promo span {
            display: block;
        }

        #_atssh {
            width: 1px !important;
            height: 1px !important;
            border: 0 !important;
        }

        .at-promo-single {
            padding: 10px;
            padding-top: 2px;
            line-height: 1.5em;
        }

            .at-promo-single img {
                padding: 3px;
            }

        .at-promo-content img {
            margin-right: 5px;
            margin-bottom: 20px;
            float: left;
        }

        .addthis_textshare {
            display: block;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABKCAYAAAAYJRJMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABmNJREFUeNrsmk9oI3UUx99vZjL5n7TbukLbxYve1INa8KAi6F48ubAHV2+KWCoqyF4WpZZ6cuthq1gKe1oU9+CCoLjg+uciCEWQPSjuReyy7Vq7W7LNJM0kM5nxvV9+U5JNk/xCm8wmMw8ek06TXyafee/93u83XwY1Y+jKwsLCiUwm87Gqqg8oigJBMsdxoFqtXs/n86fn5ua+plPoLhNw1NnZ2ZPZbPai67pgWRbQMUjGGINIJMKPOzs7p5aXly/h6apGkYMexZOLSA/K5TKYpgm2bQcKkKZpEIvFIBqNUnAs4qlv0U0CpKInt7a2pjC1+JuDBoeMsobcMAxKtSliQqcJEHmSIofCK8hGgMhEeSFABS+CopVKJfCAPBOAosRG82awEFATIKrNTPOKuAyg54/p8O6Lz0AylgKnVAEo4WxXruKIdW9SGBSNPCz9+jv8uFUdZEAchgcIZAC98+wjMK644Nz8B9x8GcCogFvarQHC6g9ModEhHk/CWw/eD5fX1wYZEDQAkinSCasCzvYdcAwsZgWLR6H78ttgRxDOd1+AbuTAxZnQrZiQsC0+5tAAkomgqmGCi/0C5EuYk5heWMKSj06DFU9B8fKXwBAgRHRe2qr4JTTm0ADyprj2gMocgJPIQnUkhhmlAMPBGEaLmRkDB18r2LJHSwb/kkEF1NBAdgPIMTFqbBOiL7wCypPP1apYMg0RPIzNvs+hFK6uAlz8hC9kZMYcKkBAk1KEpjwTtGKeF3oWT2ApUkEvl8Ct2qBZou5gLQoeIPzRDAty5colqHz/FQeTPHMObKxBhU8/AH17k69pIJ3ka+GhAoTrj84ppqje3gC6eD8WZBfP8887uIajFXEGZzXLkRpzYADRfkjHANIwv1yH9gZ49FDfY63+DI4eraVWIopwYgAp/NtmUmMODCAZy+EqfyyVxS66KKhWofLN55yXnsK0ymI9SscgMn4Ecuvrw7EN0s2b3/tpFT48/hSMJBKw1ypo0VrhjmtYn3SEpUJ+YxPOXPhhODbS0DPox9D/CJepDfYw+g0l5NDeQkAhoMMBRCV3LcSxZ2uCCQfkikXEEnopZMMZLAkmLrXGfE8anR5lUPNyH/rRgML5E/08+m/oW+iGJsBQ53dL/OM6ekr0SL3YpGYicl9Cf6zLz/6LfgH9NjRu9B54C0hwKAgwtwQT27tYiqARET1j6Gl0vUeAFDE2PVZ5Df0Jyc/dRD8nLr7spcAhAqLNKwN9W3zHHfoeVndH6aIT4sJjPYwgSum4uBGUyrPo0xJwzorovi3utNWDCDJF5OwKYA6jTS5W22tl4uK9Z2W9agEUcQOOoE+gT6K/2QYSwfkI/W/x+pb4AdVDTjNHjGl7Y5OxfosUxM2IiDpHETTVBlI9nBvo/6Hv0N3F6+7LVkHfG0W3dkesuoJIM+cG+mdikmgFZ7PfcPgN9Uvm0iKSJkQkTYqaUw8n3284vgJqAYkAjYsamBNR5BucrveDepFuyMhLNxDF0RCpnxdTrm9wfI+gfSIpJloAJnqdkp9w7hlAdZAUkV7etOv4CQfqGkF+cSsrKyfS6TQXcQZNCkOBQiJOwzBOz8zMNIs45+fnT46OjnIRJ0nwgijipGd6dMzlcqeQR6OIs1gsLpZKJf48nVQZw/BMq6v1j6pyAaeu6/S4qlnEub29PeVpo4MGxzNPbIGAmkWcGEEQNPF4y0VZ7YFno4iTtNEhoAZAjSLOEFAToEYRJxXoToCePurCG8cfh2QsCc4uNsDm/iLO3YIB569eg192tEEG1CjipAjq1Pu8Pv0QjDEHnI32Is5YPAmvTqTgymZuYHuiprUYRVAnQHHLlBdx4oxAYwYKkE0iTlVOxGm7MFyAZFLMIRGnJifipFSjMYcGkIym2SFlvSYr4hxcQPvuB8kA4utqJifipFo0qELyfQFJaZoVrSsR51DppGV+jOP1SZIizqECFIo4OwCSsVDE2cFCEWdo9RaKOGUsBBQCOhxAoYiz0dYgFHG2tFDE2cZCEWerdTiEIs6OgEIRp0QENYs468I+FHHeJeIEIV7wY3lzYBGn+EE9N9Wn2cK7W5Y4ErRrAtRkCzh7Urx+wfETUCtIf9UBOus3HOhRET5IurUVcfYbTtf7QT2wes00QBsRpx9w7oUIujuS9hVx+gWHX1jQpHbd2v8CDAAwldUwLVojIgAAAABJRU5ErkJggg==) no-repeat 0 0;
            width: 44px;
            height: 37px;
            line-height: 28px;
            padding: 0 0 0 28px;
            margin: 0;
            text-decoration: none;
            font-family: helvetica,arial,sans-serif;
            font-size: 9pt;
            color: #fff;
            cursor: pointer;
        }

            .addthis_textshare:hover {
                background-position: 0 -37px;
                text-decoration: none;
            }

        .at_img_share {
            position: absolute;
            opacity: 0;
            background: url(data:image/gif;base64,R0lGODlhFwAVAMQAAP7+/vLy8vv7+/X19fj4+Pz8/PHx8f39/fDw8O/v7/T09Pn5+fPz8/r6+vb29vf394CAgHZ2dm5ubklJSWRkZFtbW39/f4KCglJSUnt7e3h4eAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAXABUAAAWLICCOZGmeaAocbOu+MFvMdG3fs6DvfO//PY0QqGsYj8iMEslsLJ7QqGUarS4I2Kz2wtV6vwSIeEyGfB/odGTNbkfSaYd8Lqnb75L5fMDv+ymAfoKDghWGhH0KiouMGI6MkAoMk5SVE5eVmQwBnJ2en6ChoqMBBqanqKmqpgitrq+wsa0JtLW2t7i0IQA7) repeat-x bottom;
            border: 1px solid #ccc;
            width: 23px;
            height: 21px;
            line-height: 21px;
            text-indent: -9999px;
            padding: 0;
            margin: 0;
            cursor: pointer;
            z-index: 1000;
        }

            .at_img_share:hover {
                border-color: #8b8b8b;
            }

            .at_img_share .addthis_toolbox {
                width: 180px;
                margin: 0 auto;
            }

        .atm {
            width: 10pc !important;
            padding: 0;
            margin: 0;
            line-height: 9pt;
            letter-spacing: normal;
            font-family: arial,helvetica,tahoma,verdana,sans-serif;
            font-size: 9pt;
            color: #444;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpiZGBgaGAgAjAxEAlGFVJHIUCAAQDcngCUgqGMqwAAAABJRU5ErkJggg==);
            padding: 4px;
        }

        .atm-f {
            text-align: right;
            border-top: 1px solid #ddd;
            padding: 5px 8px;
        }

        .atm-i {
            background: #fff;
            border: 1px solid #d5d6d6;
            padding: 0;
            margin: 0;
            box-shadow: 1px 1px 5px rgba(0,0,0,.15);
        }

        .atm-s {
            margin: 0 !important;
            padding: 0 !important;
        }

            .atm-s a:focus {
                border: transparent;
                outline: 0;
                -webkit-transition: none;
                transition: none;
            }

            #at_hover.atm-s a, .atm-s a {
                display: block;
                text-decoration: none;
                padding: 4px 10px;
                color: #235dab !important;
                font-weight: 400;
                font-style: normal;
                -webkit-transition: none;
                transition: none;
            }

        #at_hover.atm-s .at_bold {
            color: #235dab !important;
        }

        #at_hover.atm-s a:hover, .atm-s a:hover {
            background: #2095f0;
            text-decoration: none;
            color: #fff !important;
        }

        #at_hover.atm-s .at_bold {
            font-weight: 700;
        }

        #at_hover.atm-s a:hover .at_bold {
            color: #fff !important;
        }

        .atm-s a .at-label {
            vertical-align: middle;
            margin-left: 5px;
            direction: ltr;
        }

        .atm-i #atic_settings {
            border: none !important;
            border-top: 1px solid #d5d6d6 !important;
            padding-top: 6px !important;
            top: 4px;
        }

        .at_a11y {
            position: absolute !important;
            top: auto !important;
            width: 1px !important;
            height: 1px !important;
            overflow: hidden !important;
        }

        .at_a11y_container {
            margin: 0;
            padding: 0;
        }

        .addthis_overlay_container {
            position: absolute;
        }

        .addthis_overlay_toolbox {
            -webkit-border-top-left-radius: 10px;
            -webkit-border-top-right-radius: 10px;
            -moz-border-radius-topleft: 10px;
            -moz-border-radius-topright: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            padding: 5px;
            background-color: #000;
            background-color: rgba(0,0,0,.6);
        }

        .linkServiceDiv {
            height: 200px;
            width: 25pc;
            border: 1px solid #000;
            background-color: #aaa;
        }

        .at_redloading {
            background: url(data:image/gif;base64,R0lGODlhCgAKAJEDAMzMzP9mZv8AAP///yH/C05FVFNDQVBFMi4wAwEAAAAh+QQFAAADACwAAAAACgAKAAACF5wncgaAGgJzJ647cWua4sOBFEd62VEAACH5BAUAAAMALAEAAAAIAAMAAAIKnBM2IoMDAFMQFAAh+QQFAAADACwAAAAABgAGAAACDJwHMBGofKIRItJYAAAh+QQFAAADACwAAAEAAwAIAAACChxgOBPBvpYQYxYAIfkEBQAAAwAsAAAEAAYABgAAAgoEhmPJHOGgEGwWACH5BAUAAAMALAEABwAIAAMAAAIKBIYjYhOhRHqpAAAh+QQFAAADACwEAAQABgAGAAACDJwncqi7EQYAA0p6CgAh+QQJAAADACwHAAEAAwAIAAACCpRmoxoxvQAYchQAOw==);
            height: 1pc;
            width: 1pc;
            background-repeat: no-repeat;
            margin: 0 auto;
        }

        .at-promo-single-dl-ch {
            width: 90pt;
            height: 37px;
        }

        .at-promo-single-dl-ff {
            width: 90pt;
            height: 44px;
        }

        .at-promo-single-dl-saf {
            width: 90pt;
            height: 3pc;
        }

        .at-promo-single-dl-ie {
            width: 129px;
            height: 51px;
        }

        .atPinBox {
            position: fixed;
            top: 25%;
            left: 35%;
            background: #fff;
            width: 482px;
            margin: 0 auto;
            overflow: auto;
            overflow-x: hidden;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpiZGBgaGAgAjAxEAlGFVJHIUCAAQDcngCUgqGMqwAAAABJRU5ErkJggg==);
            border-radius: 8px;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            padding: 8px;
            font-family: arial,helvetica,tahoma,verdana,sans-serif;
            font-size: 9pt;
            color: #cfcaca;
            z-index: 10000001;
        }

        .atPinHdr, .atPinWinHdr {
            display: block;
            background: #f1f1f1;
            border-bottom: 1px solid #ccc;
            box-shadow: 0 0 3px rgba(0,0,0,.1);
            -webkit-box-shadow: 0 0 3px rgba(0,0,0,.1);
            -moz-box-shadow: 0 0 3px rgba(0,0,0,.1);
            padding: 8px 10px;
            font-size: 1pc;
            line-height: 1pc;
            color: #8c7e7e;
        }

            .atPinHdr img, .atPinWinHdr img {
                vertical-align: bottom;
                margin-left: 5px;
                cursor: pointer;
            }

            .atPinHdr span {
                vertical-align: top;
            }

        .atPinHdr {
            height: 1pc;
        }

        .atPinMn {
            background: #fff;
            padding: 10px;
            height: 296px;
            overflow: auto;
            overflow-x: hidden;
            text-align: center;
            position: relative;
        }

        .atPinHdrMsg {
            left: 20px;
        }

        .atPinClose {
            width: 9pt;
            text-align: right;
            font-weight: 700;
            position: absolute;
            right: 15px;
            cursor: pointer;
        }

        .atImgSpanOuter {
            position: relative;
            overflow: hidden;
            height: 200px;
            width: 200px;
            border: 1px solid #a0a0a0;
            float: left;
            display: block;
            margin: 10px;
            background-color: #fff;
        }

        .atImgSpanInner img {
            cursor: pointer;
        }

        .atImgSpanSize {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            display: block;
            background: #fff;
            height: 22px;
            line-height: 24px;
            color: #000;
            overflow: hidden;
            font-size: 10px;
            zoom: 1;
            filter: alpha(opacity=70);
            opacity: .7;
        }

        .atImgActBtn {
            display: none;
            width: 2pc;
            height: 2pc;
            position: absolute;
            top: 75px;
            left: 5pc;
            background-color: #fff;
        }

        .atPinWin {
            font-family: arial,helvetica,tahoma,verdana,sans-serif;
            text-align: center;
        }

        .atPinWinHdr {
            display: block;
            font-size: 20px;
            height: 20px;
            width: 100%;
            position: fixed;
            z-index: 1;
        }

        .atPinWinMn {
            text-align: center;
            padding: 40px 0 0;
            display: inline-block;
        }

        .atImgIco, .atImgMsg {
            float: left;
        }

        .atImgIco {
            margin-right: 5px;
        }

        .atNoImg {
            display: block;
            margin-top: 40px;
            font-size: 1pc;
            line-height: 1pc;
            color: #8c7e7e;
        }

        .at_PinItButton {
            display: block;
            width: 40px;
            height: 20px;
            padding: 0;
            margin: 0;
            background-image: url(//s7.addthis.com/static/t00/pinit00.png);
            background-repeat: no-repeat;
        }

            .at_PinItButton:hover {
                background-position: 0 -20px;
            }

        .addthis_toolbox .addthis_button_pinterest_pinit {
            position: relative;
        }

        .at-share-tbx-element .fb_iframe_widget span {
            vertical-align: baseline !important;
        }

        .at3PinWinMn {
            text-align: center;
            padding: 20px 0 0 20px;
            overflow: auto;
            height: 437px;
        }

        .at3ImgSpanOuter {
            position: relative;
            width: 185px;
            height: 185px;
            border: 1px solid #dedede;
            margin: 0 10px 10px 0;
            overflow: hidden;
            float: left;
        }

            .at3ImgSpanOuter:hover {
                border-color: #3dadfc;
                box-shadow: 0 0 3px #3dadfc;
                cursor: pointer;
            }

            .at3ImgSpanOuter .atImgLB {
                display: block;
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                z-index: 1;
                background-color: rgba(0,0,0,.8);
                background-repeat: no-repeat;
                background-position: center center;
            }

        #at3lb {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            z-index: 16777270;
            display: none;
        }

        .at3lblight {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpizCuu/sRABGBiIBKMKqSOQoAAAwC8KgJipENhxwAAAABJRU5ErkJggg==);
            background: hsla(217,6%,46%,.65);
        }

        .at3lbdark {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpiZGBg2M9ABGBiIBKMKqSOQoAAAwBAlwDTJEe1aAAAAABJRU5ErkJggg==);
            background: rgba(0,0,0,.5);
        }

        .at3lbnone {
            background: hsla(0,0%,100%,0);
        }

        #at3win {
            position: fixed;
            _position: absolute;
            top: 15%;
            left: 50%;
            margin-left: -20pc;
            background: #fff;
            border: 1px solid #d2d2d1;
            width: 40pc;
            box-shadow: 0 0 8px 4px rgba(0,0,0,.25);
            font-family: helvetica neue,helvetica,arial,sans-serif;
            z-index: 16777271;
            display: none;
            overflow: hidden;
        }

            #at3win #at3winheader {
                position: relative;
                border-bottom: 1px solid #d2d2d1;
                background: #f1f1f1;
                height: 49px;
                cursor: default;
            }

                #at3win #at3winheader p {
                    position: absolute;
                    top: 1pc;
                    left: 75pt;
                    width: 475px;
                    padding: 0;
                    margin: 0;
                    font-size: 14px;
                    line-height: 18px;
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis;
                }

                #at3win #at3winheader h3 {
                    height: 49px;
                    text-align: left;
                    line-height: 49px;
                    margin: 0 50px 0 22px;
                    border: 0;
                    padding: 0 20px;
                    font-size: 1pc;
                    font-family: helvetica neue,helvetica,arial,sans-serif;
                    font-weight: 700;
                    text-shadow: 0 1px #fff;
                    color: #333;
                    direction: ltr;
                }

                    #at3win #at3winheader h3.logoaddthis {
                        padding-left: 22px;
                    }

                #at3win #at3winheader .at3winheadersvc {
                    display: inline-block;
                    position: absolute;
                    top: 15px;
                    left: 20px;
                    cursor: default !important;
                    opacity: 1 !important;
                }

                    #at3win #at3winheader .at3winheadersvc .at-icon, #at3win #at3winheader .at3winheadersvc .at-icon-wrapper {
                        display: block;
                    }

                #at3win #at3winheader #at3winheaderclose {
                    display: block;
                    position: absolute;
                    top: 0;
                    right: 0;
                    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2tpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcFJpZ2h0czpNYXJrZWQ9IkZhbHNlIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjQwNzc2QTQ5Qjk1RDExRTFCMkE4OEUxNTUwRjMwREY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjQwNzc2QTQ4Qjk1RDExRTFCMkE4OEUxNTUwRjMwREY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzMgTWFjaW50b3NoIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InV1aWQ6OEE1QUU0REMzMEU4REYxMUJCNzJGQkJCQzlBM0Y1RkMiIHN0UmVmOmRvY3VtZW50SUQ9InV1aWQ6M0M5RkJGRTEyQUU4REYxMUJCNzJGQkJCQzlBM0Y1RkMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz78RHhFAAAApUlEQVR42rxTiQnAIAxU6QAdxRW6iZ1EnKRu4gqO0g1sCilEvT7Q0kBQ9O4wl6hLKepNGPUyhmMTQhhpSZTZez8jMGEWWizlRJi1fUHiS8dARHaMSaiELPaViCB3WC1NBMB4CMozWaJuuwBE1BkZdoEB8Qn5kzaaC7fbgN0xN+TYlNOJmCvyXjPwpBKRL7BnhgERiwQmHhDothDJjMVz8Ptv3AQYAJWjVVdnlDZCAAAAAElFTkSuQmCC);
                    background-repeat: no-repeat;
                    background-position: center center;
                    border-left: 1px solid #d2d2d1;
                    width: 49px;
                    height: 49px;
                    line-height: 49px;
                    overflow: hidden;
                    text-indent: -9999px;
                    text-shadow: none;
                    cursor: pointer;
                }

                    #at3win #at3winheader #at3winheaderclose:hover {
                        background-color: #dedede;
                    }

            #at3win #at3wincontent {
                height: 450px;
                position: relative;
            }

        #at3wincopy, #at3winemail, #at3winshare {
            height: 450px;
        }

        #ate-promo .addthis_button_twitter .aticon-twitter {
            background-position: 0 -4pc !important;
        }

        #at3wincontent {
            -o-box-sizing: content-box;
            box-sizing: content-box;
        }

        #at3win #at3wincontent.at3nowin {
            position: relative;
            height: 25pc;
            padding: 20px;
            overflow: auto;
        }

        #at3winfooter {
            position: relative;
            background: #fff;
            -o-box-sizing: content-box;
            box-sizing: content-box;
            border-top: 1px solid #d2d2d1;
            height: 11px;
            _height: 20px;
            line-height: 11px;
            padding: 5px 20px;
            font-size: 11px;
            color: #666;
        }

            #at3winfooter a {
                margin-right: 10px;
                text-decoration: none;
                color: #666;
                float: left;
            }

                #at3winfooter a:hover {
                    text-decoration: none;
                    color: #000;
                }

        #at3logo {
            background: url(//s7.addthis.com/static/t00/at3logo-sm.gif) no-repeat left center !important;
            padding-left: 10px;
        }

        #at3privacy {
            position: absolute;
            top: 5px;
            right: 10px;
            background: url(//s7.addthis.com/static/t00/at3-privacy.gif) no-repeat right center !important;
            padding-right: 14px;
        }

        #at3winfilter {
            background: #f1f1f1;
            border-top: 1px solid #fff;
            border-bottom: 1px solid #d2d2d1;
            padding: 13px 0;
            text-align: center;
        }

        #at3winsvc-filter {
            background-repeat: no-repeat;
            background-position: right;
            background-image: url(data:image/gif;base64,R0lGODlhHgAUALMAAJiYmHV1deTk5Kmpqbe3t9nZ2Y2Njfn5+fT09Ozs7MnJyYGBgWpqav39/WZmZv///yH5BAAAAAAALAAAAAAeABQAAASi8MlXxgoLqDa7/xICOGTpLAKoTshCMsZgBG+6gqNjJA93DAxH4HDzCEgGTqdBIBGKnSYjoewcXAvoZJRVDUhErcEBWClIPC1X1fg6ENrHl4GoThquQJxCKn+kA3sPY2QHSkwMQQJ2Nw0INEIABBYmATZxCQtBJpyWgg0KBkEMCwQKm0KXgoYTBaiegh8NriUBabFLtH24Hg2zm368HgULKDcRADs=);
            border: 1px solid #d2d2d1;
            padding: 15px 38px 15px 9pt;
            margin: 0 auto;
            width: 374px;
            text-align: left;
            font-size: 18px;
            border-radius: 5px;
            box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
            -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
            color: #666;
        }

        #service-filter:hover {
            border-color: #9c9c9c;
        }

        #service-filter:focus {
            border-color: #3dadfc;
            box-shadow: 0 0 4px rgba(61,173,252,.8);
            -webkit-box-shadow: 0 0 4px rgba(61,173,252,.8);
            -moz-box-shadow: 0 0 4px rgba(61,173,252,.8);
            outline: 0;
        }

        #at3wintoolbox {
            margin: 0 0 0 20px;
            height: 340px;
            overflow: auto;
            padding: 10px 0;
        }

            #at3wintoolbox a {
                display: block;
                float: left;
                width: 180px;
                padding: 4px;
                margin-bottom: 10px;
                text-decoration: none;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                border-radius: 4px;
                -moz-border-radius: 4px;
                -webkit-border-radius: 4px;
                font-size: 1pc;
                color: #235dab;
            }

                #at3wintoolbox a:focus, #at3wintoolbox a:hover {
                    background-color: #2095f0;
                }

                #at3wintoolbox a:focus, #at3wintoolbox a:hover, #at3wintoolbox span:hover {
                    text-decoration: none;
                    color: #fff;
                    font-weight: 400;
                    text-shadow: none;
                    opacity: 1;
                    filter: alpha(opacity=100);
                    cursor: pointer;
                }

            #at3wintoolbox span {
                display: block;
                height: 2pc;
                line-height: 2pc;
                padding-left: 38px !important;
                width: auto !important;
            }

        .service-icon {
            padding: 4px 8px;
        }

            .service-icon:hover {
                background: #2095f0;
                color: #fff;
            }

            .service-icon span {
                padding-left: 20px;
            }

        #at3winssi {
            position: absolute;
            right: 50px;
            top: 0;
            height: 50px;
            display: block;
        }

        .at-quickshare-header-peep {
            position: absolute;
            top: 0;
            right: 34px;
            height: 1pc;
            padding: 6px;
            border-left: 1px solid #dedede;
            cursor: pointer;
        }

            .at-quickshare-header-peep.peep-active {
                background: #dedede;
                cursor: default;
            }

            .at-quickshare-header-peep span {
                display: inline-block;
                background: url(data:image/gif;base64,R0lGODlhBwAEAIABALm5uf///yH5BAEAAAEALAAAAAAHAAQAAAIIhA+BGWoNWSgAOw==) no-repeat right;
                padding-right: 11px;
            }

                .at-quickshare-header-peep span img {
                    display: block;
                    background: #ccc;
                    width: 1pc;
                    height: 1pc;
                    line-height: 20px;
                    overflow: hidden;
                    text-indent: -9999px;
                    border: 1px solid #bbb;
                    border-radius: 3px;
                    -webkit-border-radius: 3px;
                    -moz-border-radius: 3px;
                }

            .at-quickshare-header-peep ul {
                position: absolute;
                top: 25px;
                left: -75px;
                width: 140px;
                background: #fff;
                border: 1px solid #bbb;
                border-radius: 4px;
                box-shadow: 0 1px 4px hsla(0,0%,40%,.8);
                margin: 0;
                padding: 0;
                font-weight: 400;
                z-index: 1100;
            }

                .at-quickshare-header-peep ul li {
                    list-style: none;
                    font-size: 9pt;
                    padding: 0;
                    margin: 0;
                    text-align: left;
                }

        .at-quickshare-menu {
            outline: 0;
        }

            .at-quickshare-menu li.at-quickshare-menu-sep {
                border-bottom: 1px solid #dedede;
            }

        .at-quickshare-header-peep ul li a {
            display: block;
            padding: 5px 10px;
            text-decoration: none;
            color: #666;
        }

            .at-quickshare-header-peep ul li a:hover {
                background: #0d98fb;
                text-decoration: none;
                color: #fff;
            }

        #at_auth {
            position: relative;
            box-sizing: content-box;
            -moz-box-sizing: content-box;
            -webkit-box-sizing: content-box;
            -o-box-sizing: content-box;
            border-top: 1px solid #d5d6d6 !important;
            padding: 10px 10px 7px;
            line-height: 1pc;
            height: 1pc;
        }

        #atic_signin {
            cursor: pointer;
        }

            #atic_signin, #atic_signin:hover {
                text-decoration: none;
            }

                #atic_signin #at_auth:hover {
                    background: #2095f0;
                    text-decoration: none;
                    color: #fff !important;
                }

        #atic_usersettings {
            cursor: pointer;
        }

            #atic_usersettings:hover {
                text-decoration: underline;
            }

        #atic_usersignout {
            font-size: 11px;
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

            #atic_usersignout:hover {
                text-decoration: underline;
            }

        #at_auth img {
            width: 1pc;
            height: 1pc;
            overflow: hidden;
            border: none;
            padding: 0;
            margin: 0 5px 0 0;
            float: left;
        }

        #at_auth a {
            text-decoration: none;
        }

        #at16pf {
            height: auto;
            text-align: right;
            padding: 4px 8px;
        }

        .at-privacy-info {
            position: absolute;
            left: 7px;
            bottom: 7px;
            cursor: pointer;
            text-decoration: none;
            font-family: helvetica,arial,sans-serif;
            font-size: 10px;
            line-height: 9pt;
            letter-spacing: .2px;
            color: #666;
        }

            .at-privacy-info:hover {
                color: #000;
            }

        @media screen and (max-width:680px) {
            #at3win {
                width: 95%;
                left: auto;
                margin-left: auto;
            }
        }

        @media print {
            #at3win, #at4-follow, #at4-share, #at4-thankyou, #at4-whatsnext, #at4m-mobile, #at15s, .at4, .at4-recommended {
                display: none !important;
            }
        }

        @media screen and (max-width:400px) {
            .at4win {
                width: 100%;
            }
        }

        @media screen and (max-height:700px) and (max-width:400px) {
            .at4-thankyou-inner .at4-recommended-container {
                height: 122px;
                overflow: hidden;
            }

            .at4-thankyou-inner .at4-recommended .at4-recommended-item:first-child {
                border-bottom: 1px solid #c5c5c5;
            }
        }
    </style>
    <style type="text/css">
        .at-branding-logo {
            font-family: helvetica,arial,sans-serif;
            text-decoration: none;
            font-size: 10px;
            display: inline-block;
            margin: 2px 0;
            letter-spacing: .2px;
        }

            .at-branding-logo .at-branding-icon {
                background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAMAAAC67D+PAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF////+GlNUkcc1QAAAB1JREFUeNpiYIQDBjQmAwMmkwEM0JnY1WIxFyDAABGeAFEudiZsAAAAAElFTkSuQmCC");
            }

            .at-branding-logo .at-branding-icon, .at-branding-logo .at-privacy-icon {
                display: inline-block;
                height: 10px;
                width: 10px;
                margin-left: 4px;
                margin-right: 3px;
                margin-bottom: -1px;
                background-repeat: no-repeat;
            }

            .at-branding-logo .at-privacy-icon {
                background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAKCAMAAABR24SMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABhQTFRF8fr9ot/xXcfn2/P5AKva////////AKTWodjhjAAAAAd0Uk5T////////ABpLA0YAAAA6SURBVHjaJMzBDQAwCAJAQaj7b9xifV0kUKJ9ciWxlzWEWI5gMF65KUTv0VKkjVeTerqE/x7+9BVgAEXbAWI8QDcfAAAAAElFTkSuQmCC");
            }

            .at-branding-logo span {
                text-decoration: none;
            }

            .at-branding-logo .at-branding-addthis, .at-branding-logo .at-branding-powered-by {
                color: #666;
            }

                .at-branding-logo .at-branding-addthis:hover {
                    color: #333;
                }

        .at-cv-with-image .at-branding-addthis, .at-cv-with-image .at-branding-addthis:hover {
            color: #fff;
        }

        a.at-branding-logo:visited {
            color: initial;
        }

        .at-branding-info {
            display: inline-block;
            padding: 0 5px;
            color: #666;
            border: 1px solid #666;
            border-radius: 50%;
            font-size: 10px;
            line-height: 9pt;
            opacity: .7;
            transition: all .3s ease;
            text-decoration: none;
        }

            .at-branding-info span {
                border: 0;
                clip: rect(0 0 0 0);
                height: 1px;
                margin: -1px;
                overflow: hidden;
                padding: 0;
                position: absolute;
                width: 1px;
            }

            .at-branding-info:before {
                content: 'i';
                font-family: Times New Roman;
            }

            .at-branding-info:hover {
                color: #0780df;
                border-color: #0780df;
            }
    </style>
    <style type="text/css">
        .at-share-dock.atss {
            top: auto;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            max-width: 100%;
            z-index: 1000200;
            box-shadow: 0 0 1px 1px #e2dfe2;
        }

        .at-share-dock.at-share-dock-zindex-hide {
            z-index: -1 !important;
        }

        .at-share-dock.atss-top {
            bottom: auto;
            top: 0;
        }

        .at-share-dock a {
            width: auto;
            -webkit-transition: none;
            transition: none;
            color: #fff;
            text-decoration: none;
            box-sizing: content-box;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
        }

            .at-share-dock a:hover {
                width: auto;
            }

        .at-share-dock .at4-count {
            height: 42px;
            padding: 5px 0 0;
            line-height: 20px;
            background: #fff;
            font-family: Helvetica neue,arial;
        }

            .at-share-dock .at4-count span {
                width: 100%;
            }

            .at-share-dock .at4-count .at4-share-label {
                color: #848484;
                font-size: 10px;
                letter-spacing: 1px;
            }

            .at-share-dock .at4-count .at4-counter {
                top: 2px;
                position: relative;
                display: block;
                color: #222;
                font-size: 22px;
            }
    </style>
    <style type="text/css">
        #at4m-mobile-container {
            z-index: 9999999;
            position: fixed;
        }

        #at4m-menu {
            -webkit-transition-timing-function: linear;
            transition-timing-function: linear;
        }

        #at4-searchClear {
            cursor: pointer;
        }

        #at4m-dock {
            position: fixed;
            left: 0;
            width: 100%;
            -o-box-shadow: 0 -1px 4px rgba(0,0,0,.15);
            box-shadow: 0 -1px 4px rgba(0,0,0,.15);
            font-family: helvetica neue,helvetica,arial,sans-serif;
            font-size: 14px;
            font-weight: 300;
            color: #000;
        }

        .at4m-dock {
            background: #ebebeb;
        }

        .at4m-dock-bottom {
            top: auto;
            bottom: 0;
        }

        .at4m-dock-top {
            top: 0;
            bottom: auto;
        }

        .at4m-dock a:link, .at4m-dock a:visited {
            display: block;
            border: none;
            margin: 0;
            padding: 0;
            height: 45px;
            line-height: 45px;
            text-align: center;
            text-decoration: none;
            text-shadow: none;
            font-weight: 700;
            color: #555;
            cursor: pointer;
            float: left;
            zoom: 1;
        }

        .at4m-dock a:active, .at4m-dock a:hover, .at4m-dock-toggle a:hover {
            background-color: #e2e2e2;
            color: #000;
            cursor: pointer;
        }

        .at4m-dock a i {
            display: inline-block;
            height: 45px;
            line-height: 45px;
            vertical-align: middle;
            -webkit-opacity: .2;
            -moz-opacity: .2;
            opacity: .2;
        }

        .at4m-dock a:active i, .at4m-dock a:hover i {
            -webkit-opacity: .9;
            -moz-opacity: .9;
            opacity: .9;
        }

        .at4m-dock a i.at4m-dock-share {
            background: url(//s7.addthis.com/static/0cdf7a36b49e9150e4ddd7ce01143fdc.png) no-repeat 0 0;
            background-image: url(//s7.addthis.com/static/c4ee1ef2025cac1d2377de864e802791.svg),none;
            background-position: 0 -2px;
            width: 30px;
        }

        .at4m-dock a i.at4m-dock-follow {
            background: url(//s7.addthis.com/static/34c65ab171688e81111b0c5219405376.png) no-repeat 0 0;
            background-image: url(//s7.addthis.com/static/2f9e800dffd36b9ae492670a4340386e.svg),none;
            background-position: 0 -2px;
            width: 26px;
        }

        .at4m-dock.at4-ma1 a {
            display: inline-block;
            width: 86%;
        }

        .at4m-dock.at4-ma2 a {
            display: inline-block;
            width: 43%;
        }

            .at4m-dock.at4-ma2 a:first-child {
                border-right: 1px solid #ccc;
            }

        .at4m-dock-toggle {
            position: fixed;
            left: auto;
            right: 0;
            width: 14%;
            min-width: 40px;
            height: 45px;
        }

        .at4m-dock-toggle-bottom {
            top: auto;
            bottom: 0;
        }

        .at4m-dock-toggle-top {
            bottom: auto;
            top: 0;
        }

        .at4m-dock-toggle a {
            display: block;
            background: url(//s7.addthis.com/static/6f026d41cd1a08a0f124517f4a4b6381.png) no-repeat center;
            background-image: url(//s7.addthis.com/static/6ac59ac63a78f7c0ecfe9bbc05ee16af.svg),none;
            border-left: 1px solid #ccc;
            height: 44px;
            line-height: 44px;
            overflow: hidden;
            text-indent: -9999em;
            text-align: center;
            padding: 0;
            margin: 0;
            -webkit-opacity: .35;
            -moz-opacity: .35;
            opacity: .35;
        }

            .at4m-dock-toggle a.at4-dock-toggle-active {
                background: url(//s7.addthis.com/static/edb81de4c71c0bc5e7093002607fb828.png) no-repeat center;
                background-image: url(//s7.addthis.com/static/958b6ad449d91a582198eaaa1013e4a8.svg),none;
                background-color: #fff;
                border-top: 1px solid #ccc;
            }

        .at4m-dock-toggle.ats-dark, .at4m-dock.ats-dark {
            background: #262b30;
            border-color: #1b1b1b;
            color: #fff;
        }

            .at4m-dock.ats-dark a {
                color: #f2f2f2;
            }

                .at4m-dock.ats-dark a i {
                    -webkit-opacity: .25;
                    -moz-opacity: .25;
                    opacity: .25;
                }

        .at4m-dock.at4-ma2.ats-dark a:first-child {
            border-right: 1px solid #3e4247;
        }

        .at4m-dock-toggle.ats-dark a:active, .at4m-dock-toggle.ats-dark a:hover, .at4m-dock.ats-dark a:active, .at4m-dock.ats-dark a:hover {
            background-color: #1b1e22;
        }

        .at4m-dock.ats-dark a i.at4m-dock-share {
            background: url(//s7.addthis.com/static/969412d543656390654b7a1fbad5c052.png) no-repeat left center;
            background-image: url(//s7.addthis.com/static/d0b50381e6dff723034c9fb045fa5579.svg),none;
            background-position: 0 -2px;
        }

        .at4m-dock.ats-dark a i.at4m-dock-follow {
            background: url(//s7.addthis.com/static/031cd90bcb2cf1bc5d0514d6df32e08b.png) no-repeat left center;
            background-image: url(//s7.addthis.com/static/9b6c210d20bea1e6b56e800331c32bff.svg),none;
            background-position: 0 -2px;
        }

        .at4m-dock-toggle.ats-dark a {
            background: url(//s7.addthis.com/static/bd94d63e97308ccebb29a220dcc82c2c.png) no-repeat center;
            background-image: url(//s7.addthis.com/static/066d11a3dfa049803336eba1abb50292.svg),none;
            border-color: #676d73;
        }

            .at4m-dock-toggle.ats-dark a.at4-dock-toggle-active {
                background: url(//s7.addthis.com/static/6ff05a92b143930d8fcc6a7d47a6859b.png) no-repeat center;
                background-image: url(//s7.addthis.com/static/fd9202254cfad377dad0ecc0eb38d503.svg),none;
            }

        .at4m-dock-toggle.top, .at4m-dock.top {
            top: 0;
            bottom: auto;
        }

            .at4m-dock-toggle.top a {
                background: url(//s7.addthis.com/static/edb81de4c71c0bc5e7093002607fb828.png) no-repeat center;
                background-image: url(//s7.addthis.com/static/958b6ad449d91a582198eaaa1013e4a8.svg),none;
            }

                .at4m-dock-toggle.top a.at4-dock-toggle-active {
                    background: url(//s7.addthis.com/static/6f026d41cd1a08a0f124517f4a4b6381.png) no-repeat center;
                    background-image: url(//s7.addthis.com/static/6ac59ac63a78f7c0ecfe9bbc05ee16af.svg),none;
                }

            .at4m-dock-toggle.top.ats-dark a {
                background: url(//s7.addthis.com/static/6ff05a92b143930d8fcc6a7d47a6859b.png) no-repeat center;
                background-image: url(//s7.addthis.com/static/fd9202254cfad377dad0ecc0eb38d503.svg),none;
                border-color: #676d73;
            }

                .at4m-dock-toggle.top.ats-dark a.at4-dock-toggle-active {
                    background: url(//s7.addthis.com/static/bd94d63e97308ccebb29a220dcc82c2c.png) no-repeat center;
                    background-image: url(//s7.addthis.com/static/066d11a3dfa049803336eba1abb50292.svg),none;
                }

        .at4m-dock.ats-gray {
            border-top: 1px solid #dbdbdb;
        }

            .at4m-dock.ats-gray a:first-child {
                border-right: 1px solid #dadada;
            }

            .at4m-dock.ats-gray a {
                color: #444;
            }

                .at4m-dock.ats-gray a i {
                    -webkit-opacity: .25;
                    -moz-opacity: .25;
                    opacity: .25;
                }

        .at4m-dock-toggle.ats-gray a {
            border-color: #b2b2b2;
        }

            .at4m-dock-toggle.ats-gray a.at4-dock-toggle-active {
                background-color: #e2e2e2;
                border-color: #b2b2b2;
            }

        .at4m-dock-toggle.ats-light a:active, .at4m-dock-toggle.ats-light a:hover, .at4m-dock.ats-light a:active, .at4m-dock.ats-light a:hover {
            background-color: #f5f5f5;
        }

        .at4m-dock-toggle.ats-light a.at4-dock-toggle, .at4m-dock-toggle.ats-light a.at4-dock-toggle-active {
            background-color: #fff;
            border-color: #dadada;
        }

        .at4m-menu {
            position: fixed;
            background: #fff;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            font-family: helvetica neue,helvetica,arial,sans-serif;
            font-size: 14px;
            font-weight: 300;
            display: none;
            opacity: 0;
        }

            .at4m-menu.abs {
                position: absolute;
            }

            .at4m-menu .at4m-menu-inner {
                position: relative;
                width: 100%;
                height: 100%;
                overflow: auto;
            }

                .at4m-menu .at4m-menu-inner .at4m-menu-header {
                    position: fixed;
                    top: 0;
                    left: 0;
                    right: 0;
                    width: 100%;
                    background: #fff;
                    -o-box-shadow: 0 2px 4px rgba(0,0,0,.1);
                    box-shadow: 0 2px 4px rgba(0,0,0,.1);
                    font-family: helvetica neue,helvetica,arial,sans-serif;
                    font-weight: 700;
                    color: #444;
                    cursor: default;
                }

                    .at4m-menu .at4m-menu-inner .at4m-menu-header .at4m-menu-header-inner {
                        position: relative;
                        height: 44px;
                        text-align: left;
                        line-height: 44px;
                        padding: 0 44px 0 15px;
                    }

                        .at4m-menu .at4m-menu-inner .at4m-menu-header .at4m-menu-header-inner a.at4m-menu-cancel {
                            position: absolute;
                            top: 0;
                            right: 0;
                            display: block;
                            background: url(//s7.addthis.com/static/56b9cf44789a75f4822ae4677c0809f0.png) no-repeat center center;
                            background-image: url(//s7.addthis.com/static/fc0122e3c71ae79db7be2a7ccfcd419c.svg),none;
                            width: 42px;
                            height: 44px;
                            overflow: hidden;
                            text-indent: -9999em;
                            -webkit-opacity: .74;
                            -moz-opacity: .74;
                            opacity: .74;
                        }

        #at4m-menu-body {
            top: 45px;
            bottom: 35px;
            left: 0;
            overflow-y: scroll;
        }

        #at4m-menu-body, #at4m-scroller {
            position: absolute;
            width: 100%;
        }

        .at4m-hidden-overflow {
            overflow: hidden;
        }

        .at4m-scroll-overflow {
            overflow-y: auto !important;
        }

        .at4m-menu .at4m-menu-inner .at4m-menu-search {
            position: relative;
            background: #f5f5f5;
            border-bottom: 1px solid #e7e9ec;
            height: 44px;
        }

            .at4m-menu .at4m-menu-inner .at4m-menu-search input[type=text] {
                position: absolute;
                top: 7px;
                left: 13px;
                right: 15px;
                width: auto;
                background: transparent;
                border: none;
                height: 24px;
                line-height: 1.14em;
                padding: 4px 4px 4px 22px;
                font-size: 1.14em;
                font-weight: 300;
                outline: 0;
                margin-bottom: 0;
            }

            .at4m-menu .at4m-menu-inner .at4m-menu-search input[type=submit] {
                position: absolute;
                top: 11px;
                left: 14px;
                width: 1pc;
                height: 1pc;
                background: url(//s7.addthis.com/static/3fc4b18bbb046f074de86a3cb5398353.svg),none;
                background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIE1hY2ludG9zaCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo1NDQxMjk0RDkzRjIxMUUyODgyNEMyRjRCOUU5QTdDNiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo1NDQxMjk0RTkzRjIxMUUyODgyNEMyRjRCOUU5QTdDNiI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjU0NDEyOTRCOTNGMjExRTI4ODI0QzJGNEI5RTlBN0M2IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjU0NDEyOTRDOTNGMjExRTI4ODI0QzJGNEI5RTlBN0M2Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+RlRfxAAAAOhJREFUeNrEU+0NgkAM5YwD4Aa6AUygTuAIwASck8hNAG7CBrKBjIAT4CvpkSb2/Ag/bNL0CH3vXj/OjOMYLbFVtNDW/mCMmWJVVVuEXOS01tpWgqRq4z+IAOALjla5qAFJoRHMJQCcM7iDHwEgSSkpIEVM/mKzAufcHSGG7wAeZBLAN4QEvqF/qgLYlqUOykVXjsmnKTwCzR6+GSMlZZAbK3kZx/4dgeMyak9CEV7jeKDmorw+2EQeYy12oFNqnsYZ3AMxzhNPxDdwL4ibsiyLIEHIhLoOBOnPb4E38UxLpvbgb6/xKcAAtbllO+gwy6kAAAAASUVORK5CYII=");
                background-repeat: no-repeat;
                background-position: 0 0;
                background-position: center bottom\9;
                border: none;
                overflow: hidden;
                text-indent: -9999em;
                -moz-opacity: .22;
                cursor: pointer;
                -webkit-opacity: .22;
                opacity: .22;
                filter: alpha(opacity=22);
            }

            .at4m-menu .at4m-menu-inner .at4m-menu-search input[type=cancel] {
                position: absolute;
                top: 9pt;
                right: 20px;
                width: 18px;
                height: 18px;
                background: url(//s7.addthis.com/static/f048274431eaef1b46f80d94f1c18af6.png) no-repeat center center;
                background-image: url(//s7.addthis.com/static/666b87d14e4d4e526b57292ab8adc465.svg),none;
                background-size: 18px 18px;
                border: none;
                overflow: hidden;
                text-indent: -9999em;
                -webkit-opacity: .14;
                -moz-opacity: .14;
                opacity: .14;
            }

        .at4m-menu .at4m-menu-inner .at4m-menu-footer {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            width: 100%;
            height: 30px;
            background: #fff;
            text-align: left;
            line-height: 1pc;
            -o-box-shadow: 0 -2px 4px rgba(0,0,0,.1);
            box-shadow: 0 -2px 4px rgba(0,0,0,.1);
        }

            .at4m-menu .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner {
                position: relative;
                height: 26px;
                padding: 5px 15px;
            }

                .at4m-menu .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner .at4m-menu-footer-logo {
                    background: url(//s7.addthis.com/static/5432e2206e5cb0b11874ad11e5a22186.png);
                    background-image: url(//s7.addthis.com/static/f1a5a53cfb4afc0b8231b342c9e39ece.svg),none;
                    background-repeat: no-repeat;
                    background-position: left 2px;
                    background-size: 9px 9px;
                    padding-left: 9pt;
                }

                .at4m-menu .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner .at4m-menu-footer-privacy {
                    position: absolute;
                    top: 7px;
                    right: 15px;
                    background: url(//s7.addthis.com/static/7450d2e11bef7d7c140b197429765a62.png);
                    background-image: url(//s7.addthis.com/static/d714fde79b61d3f511dd5c11ad366e68.svg),none;
                    background-repeat: no-repeat;
                    background-position: right 3px;
                    background-size: 8px 9px;
                    padding-right: 13px;
                }

                .at4m-menu .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner a:link, .at4m-menu .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner a:visited {
                    font-size: .714em;
                    text-decoration: none;
                    color: #666;
                }

        .at4m-menu.abs {
            border-top: .5px solid #efefef;
        }

            .at4m-menu.abs, .at4m-menu.abs .at4m-menu-inner .at4m-menu-footer, .at4m-menu.abs .at4m-menu-inner .at4m-menu-header {
                position: absolute;
            }

        .at4m-menu .at4m-menu-content {
            position: relative;
            padding: 0 0 27px;
        }

            .at4m-menu .at4m-menu-content ul {
                margin: 0;
                padding: 0;
            }

                .at4m-menu .at4m-menu-content ul li {
                    background: #fff;
                    list-style: none;
                    margin: 0;
                    padding: 0;
                    border-bottom: 1px solid #e7e9ec;
                    -ms-box-sizing: content-box;
                    -o-box-sizing: content-box;
                    box-sizing: content-box;
                }

                    .at4m-menu .at4m-menu-content ul li:hover {
                        background: #f5f5f5;
                    }

                    .at4m-menu .at4m-menu-content ul li a {
                        position: relative;
                        display: block;
                        height: 2pc;
                        line-height: 2pc;
                        padding: 9pt 20px 9pt 14px;
                        text-decoration: none;
                        text-align: left;
                        font-family: helvetica neue,helvetica,arial,sans-serif;
                        font-size: 1.07em;
                        font-weight: 300;
                        color: #444;
                        -ms-box-sizing: content-box;
                        -o-box-sizing: content-box;
                        box-sizing: content-box;
                    }

                        .at4m-menu .at4m-menu-content ul li a:active {
                            background-color: #f9f9f9;
                        }

                        .at4m-menu .at4m-menu-content ul li a span.at-icon-wrapper {
                            margin: 0 9px 0 0;
                            float: left;
                        }

                        .at4m-menu .at4m-menu-content ul li a span.at4-label {
                            display: inline-block;
                            height: 2pc;
                            line-height: 2pc;
                            margin-left: 10px;
                        }

                            .at4m-menu .at4m-menu-content ul li a span.at4-label.atservice-preferred {
                                font-weight: 700;
                            }

                        .at4m-menu .at4m-menu-content ul li a span.at4-arrow {
                            display: inline-block;
                            position: absolute;
                            right: 5px;
                            background: url(//s7.addthis.com/static/745bc30b589d20aeba08481e06fae159.png);
                            background-image: url(//s7.addthis.com/static/f4d5547a72831e67681d82122e1d563f.svg),none;
                            background-repeat: no-repeat;
                            background-position: center center;
                            width: 2pc;
                            height: 2pc;
                            text-indent: -9999em;
                            overflow: hidden;
                            -webkit-opacity: .22;
                            -moz-opacity: .22;
                            opacity: .22;
                        }

        .at4m-menu.ats-dark .at4m-menu-footer, .at4m-menu.ats-dark .at4m-menu-header {
            background: #262b30;
            color: #fff;
        }

        .at4m-menu.ats-dark .at4m-menu-inner .at4m-menu-header button {
            background: #000;
            border-color: #333;
            color: #fff;
        }

        .at4m-menu.ats-dark .at4m-menu-inner .at4m-menu-header .at4m-menu-header-inner a.at4m-menu-cancel {
            background: url(//s7.addthis.com/static/5092b14c9020eaa68c3de74da2219940.png) no-repeat center center;
            background-image: url(//s7.addthis.com/static/fb08f6d50887bd0caacc86a62bcdcf68.svg),none;
        }

        .at4m-menu.ats-dark .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner a:link, .at4m-menu.ats-dark .at4m-menu-inner .at4m-menu-footer .at4m-menu-footer-inner a:visited {
            color: #ccc;
        }

        #at4m-dock:hover {
            cursor: pointer;
        }

        #at4m-dock.ats-dark {
            background: #262b30;
            border-color: #1b1b1b;
            color: #fff;
        }

        #at4m-dock.ats-light {
            background: #fff;
            border-color: #c5c5c5;
        }

        .at4m-dock.ats-dark a, .at4m-dock.ats-dark a:first-child {
            color: #fff;
        }

            .at4m-dock.ats-dark a:active, .at4m-dock.ats-dark a:hover {
                background: #1b1e22;
            }

        .at-expandedmenu-component .at4m-dock, .at-expandedmenu-component .at4m-dock-toggle {
            display: none;
        }
    </style>
    <style type="text/css">
        #at4-drawer-outer-container {
            top: 0;
            width: 20pc;
            position: fixed;
        }

            #at4-drawer-outer-container.at4-drawer-inline {
                position: relative;
            }

                #at4-drawer-outer-container.at4-drawer-inline.at4-drawer-right {
                    float: right;
                    right: 0;
                    left: auto;
                }

                #at4-drawer-outer-container.at4-drawer-inline.at4-drawer-left {
                    float: left;
                    left: 0;
                    right: auto;
                }

            #at4-drawer-outer-container.at4-drawer-shown, #at4-drawer-outer-container.at4-drawer-shown * {
                z-index: 999999;
            }

            #at4-drawer-outer-container, #at4-drawer-outer-container .at4-drawer-outer, #at-drawer {
                height: 100%;
                overflow-y: auto;
                overflow-x: hidden;
            }

        .at4-drawer-push-content-right-back {
            position: relative;
            right: 0;
        }

        .at4-drawer-push-content-right {
            position: relative;
            left: 20pc !important;
        }

        .at4-drawer-push-content-left-back {
            position: relative;
            left: 0;
        }

        .at4-drawer-push-content-left {
            position: relative;
            right: 20pc !important;
        }

        #at4-drawer-outer-container.at4-drawer-right {
            left: auto;
            right: -20pc;
        }

        #at4-drawer-outer-container.at4-drawer-left {
            right: auto;
            left: -20pc;
        }

        #at4-drawer-outer-container.at4-drawer-shown.at4-drawer-right {
            left: auto;
            right: 0;
        }

        #at4-drawer-outer-container.at4-drawer-shown.at4-drawer-left {
            right: auto;
            left: 0;
        }

        #at-drawer {
            top: 0;
            z-index: 9999999;
            height: 100%;
            -webkit-animation-duration: .4s;
            animation-duration: .4s;
        }

            #at-drawer.drawer-push.at-right {
                right: -20pc;
            }

            #at-drawer.drawer-push.at-left {
                left: -20pc;
            }

            #at-drawer .at-recommended-label {
                padding: 0 0 0 20px;
                color: #999;
                line-height: 3pc;
                font-size: 18px;
                font-weight: 300;
                cursor: default;
            }

        #at-drawer-arrow {
            width: 30px;
            height: 5pc;
        }

            #at-drawer-arrow.ats-dark {
                background: #262b30;
            }

            #at-drawer-arrow.ats-gray {
                background: #f2f2f2;
            }

        #at-drawer-open-arrow {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAABcCAYAAAC1OT8uAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjk3ODNCQjdERUQ3QjExRTM5NjFGRUZBODc3MTIwMTNCIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjk3ODNCQjdFRUQ3QjExRTM5NjFGRUZBODc3MTIwMTNCIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OTc4M0JCN0JFRDdCMTFFMzk2MUZFRkE4NzcxMjAxM0IiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6OTc4M0JCN0NFRDdCMTFFMzk2MUZFRkE4NzcxMjAxM0IiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7kstzCAAAB4ElEQVR42uyWv0oDQRDGb9dYimgVjliID2Ca9AGfwtZob2Grja1PIFj7EhGCYK99VPBPOkVMp8X5rc6FeN7dfjOksMjAxwXZ3667OzvfLKRr682l5ZV9aDh+fxsnRHhoDzqGLjFBi4XOoFtoAxowoB893o/w7WpAl/+QgQMBwwRdTPhUC2lAV/wDA7qy5WOgq9psHejqTqkKdLE7KYCv0JZjMgBgB58raBG6mP1K6j2pT099T+qMUOeeOss1wDcEIA1PnQXy576rAUI0oFMoC7VCnn40Gs8Pd4lAiXNUKmJ0lh1mPzGEWiyUCqAGW3Pwv4IvUJsFO9CHgP3Zr6Te0xwgAf3LxaAjS241pbikCRkOg+nSJdV4p8HOPl3vvRYI5dtrgVDvvcWovcWovcWovcWovcWovcWovQChWNywNpqvdAKtQp/QNmPUIQ6kwwqt2Xmsxf6GMPM1Pptsbz45CPmXqKb+15Gz4J/LZcDSNIqBlQlbB0afe1mmUDWiCNKFZRq0VKMeXY1CTDq2sJLWsCmoaBBRqNRR6qBKC6qCaj2rDIqaXBGiXHEaom00h1S+K3fVlr6HNuqgvgCh0+owt21bybQn8+mZ78mcEebcM2e5+T2ZX24ZqCph0qn1vgQYAJ/KDpLQr2tPAAAAAElFTkSuQmCC);
            background-repeat: no-repeat;
            width: 13px;
            height: 23px;
            margin: 28px 0 0 8px;
        }

        .at-left #at-drawer-open-arrow {
            background-position: 0 -46px;
        }

        .ats-dark #at-drawer-open-arrow {
            background-position: 0 -23px;
        }

        .ats-dark.at-left #at-drawer-open-arrow {
            background-position: 0 -69px;
        }

        #at-drawer-arrow.at4-drawer-modern-browsers {
            position: fixed;
            top: 40%;
            background-repeat: no-repeat;
            background-position: 0 0 !important;
            z-index: 9999999;
        }

        .at4-drawer-inline #at-drawer-arrow {
            position: absolute;
        }

        #at-drawer-arrow.at4-drawer-modern-browsers.at-right {
            right: 0;
        }

        #at-drawer-arrow.at4-drawer-modern-browsers.at-left, #at-drawer-arrow.at4-drawer-old-browsers.at-left {
            left: 0;
        }

        #at-drawer-arrow.at4-drawer-old-browsers.at-right {
            right: 0;
        }

        #at-drawer-arrow.at4-drawer-old-browsers {
            position: fixed;
            top: 50%;
        }

        .at4-drawer-push-animation-left {
            -webkit-transition: left .4s ease-in-out .15s;
            transition: left .4s ease-in-out .15s;
        }

        .at4-drawer-push-animation-right {
            -webkit-transition: right .4s ease-in-out .15s;
            transition: right .4s ease-in-out .15s;
        }

        #at-drawer.drawer-push.at4-drawer-push-animation-right {
            right: 0;
        }

        #at-drawer.drawer-push.at4-drawer-push-animation-right-back {
            right: -20pc !important;
        }

        #at-drawer.drawer-push.at4-drawer-push-animation-left {
            left: 0;
        }

        #at-drawer.drawer-push.at4-drawer-push-animation-left-back {
            left: -20pc !important;
        }

        #at-drawer .at4-closebutton.drawer-close {
            content: 'X';
            color: #999;
            display: block;
            position: absolute;
            margin: 0;
            top: 0;
            right: 0;
            width: 3pc;
            height: 45px;
            line-height: 45px;
            overflow: hidden;
            opacity: .5;
        }

        #at-drawer.ats-dark .at4-closebutton.drawer-close {
            color: #fff;
        }

        #at-drawer .at4-closebutton.drawer-close:hover {
            opacity: 1;
        }

        #at-drawer.ats-dark.at4-recommended .at4-logo-container a {
            color: #666;
        }

        #at-drawer.at4-recommended .at4-recommended-vertical {
            padding: 0;
        }

        #at-drawer.at4-recommended .at4-recommended-item .sponsored-label {
            margin: 2px 0 0 21px;
            color: #ddd;
        }

        #at-drawer.at4-recommended .at4-recommended-vertical .at4-recommended-item {
            position: relative;
            padding: 0;
            width: 20pc;
            height: 180px;
            margin: 0;
        }

            #at-drawer.at4-recommended .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-img a:after {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: rgba(0,0,0,.65);
                z-index: 1000000;
                -webkit-transition: all .2s ease-in-out;
                transition: all .2s ease-in-out;
            }

            #at-drawer.at4-recommended .at4-recommended-vertical .at4-recommended-item.at-hover .at4-recommended-item-img a:after {
                background: rgba(0,0,0,.8);
            }

        #at-drawer .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-img, #at-drawer .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-img a, #at-drawer .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-img img {
            width: 20pc;
            height: 180px;
            float: none;
        }

        #at-drawer .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption {
            width: 100%;
            position: absolute;
            bottom: 0;
            left: 0;
            height: 70px;
        }

            #at-drawer .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption .at-h4 {
                color: #fff;
                position: absolute;
                height: 52px;
                top: 0;
                left: 20px;
                right: 20px;
                margin: 0;
                padding: 0;
                line-height: 25px;
                font-size: 20px;
                font-weight: 600;
                z-index: 1000001;
                text-decoration: none;
                text-transform: none;
            }

        #at-drawer.at4-recommended .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption .at-h4 a:hover {
            text-decoration: none;
        }

        #at-drawer.at4-recommended .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption .at-h4 a:link {
            color: #fff;
        }

        #at-drawer.at4-recommended .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption small {
            position: absolute;
            top: auto;
            bottom: 10px;
            left: 20px;
            width: auto;
            color: #ccc;
        }

        #at-drawer.at4-recommended .at4-logo-container {
            margin-left: 20px;
        }

        #at-drawer.ats-dark.at4-recommended .at4-logo-container a:hover {
            color: #fff;
        }

        #at-drawer.at4-recommended .at-logo {
            margin: 0;
        }
    </style>
    <style type="text/css">
        .at4-follow {
            position: fixed;
            _position: absolute;
            top: 0;
            right: 0;
            font-weight: 400;
            color: #666;
            cursor: default;
            z-index: 10001;
        }

            .at4-follow .at4-follow-inner {
                position: relative;
                padding: 10px 24px 10px 15px;
            }

        .at4-follow-inner, .at-follow-open-control {
            border: 0 solid #c5c5c5;
            border-width: 1px 0 1px 1px;
            margin-top: -1px;
        }

        .at4-follow .at4-follow-container {
            margin-left: 9pt;
        }

        .at4-follow.at4-follow-24 .at4-follow-container {
            height: 24px;
            line-height: 23px;
            font-size: 13px;
        }

        .at4-follow.at4-follow-32 .at4-follow-container {
            width: 15pc;
            height: 2pc;
            line-height: 2pc;
            font-size: 14px;
        }

        .at4-follow .at4-follow-container .at-follow-label {
            display: inline-block;
            height: 24px;
            line-height: 24px;
            margin-right: 10px;
            padding: 0;
            cursor: default;
            float: left;
        }

        .at4-follow .at4-follow-container .at-icon-wrapper {
            height: 24px;
            width: 24px;
        }

        .at4-follow .at4-icon-fw {
            _float: left;
            *float: left;
        }

        .at4-follow.ats-transparent .at4-follow-inner, .at-follow-open-control.ats-transparent {
            border-color: transparent;
        }

        .at4-follow.ats-dark .at4-follow-inner, .at-follow-open-control.ats-dark {
            background: #262b30;
            border-color: #000;
            color: #fff;
        }

        .at4-follow.ats-dark .at-follow-close-control {
            background-color: #262b30;
        }

        .at4-follow.ats-light .at4-follow-inner {
            background: #fff;
            border-color: #c5c5c5;
        }

        .at4-follow.ats-gray .at4-follow-inner, .at-follow-open-control.ats-gray {
            background: #f2f2f2;
            border-color: #c5c5c5;
        }

        .at4-follow.ats-light .at4-follow-close-control, .at-follow-open-control.ats-light {
            background: #e5e5e5;
        }

        .at4-follow .at4-follow-inner .at4-follow-close-control {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            width: 20px;
            cursor: pointer;
            display: none;
        }

            .at4-follow .at4-follow-inner .at4-follow-close-control div {
                display: block;
                line-height: 20px;
                text-indent: -9999em;
                margin-top: calc(50% + 1px);
                overflow: hidden;
            }

        .at-follow-open-control div.at4-arrow.at-left {
            background-position: 0 -2px;
        }

        .at-follow-open-control {
            position: fixed;
            height: 35px;
            top: 0;
            right: 0;
            padding-top: 10px;
            z-index: 10002;
        }

        .at-follow-btn {
            margin: 0 5px 5px 0;
            padding: 0;
            outline-offset: -1px;
            display: inline-block;
            box-sizing: content-box;
            transition: all .2s ease-in-out;
        }

            .at-follow-btn:focus, .at-follow-btn:hover {
                -webkit-transform: translateY(-4px);
                transform: translateY(-4px);
            }

        .at4-follow-24 .at-follow-btn {
            height: 25px;
            line-height: 0;
            width: 25px;
        }
    </style>
    <style type="text/css">
        .at-follow-tbx-element .at300b, .at-follow-tbx-element .at300m {
            display: inline-block;
            width: auto;
            padding: 0;
            margin: 0 2px 5px;
            outline-offset: -1px;
            -webkit-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }

            .at-follow-tbx-element .at300b:focus, .at-follow-tbx-element .at300b:hover, .at-follow-tbx-element .at300m:focus, .at-follow-tbx-element .at300m:hover {
                -webkit-transform: translateY(-4px);
                transform: translateY(-4px);
            }

        .at-follow-tbx-element .addthis_vertical_style .at300b, .at-follow-tbx-element .addthis_vertical_style .at300m {
            display: block;
        }

            .at-follow-tbx-element .addthis_vertical_style .at300b .addthis_follow_label, .at-follow-tbx-element .addthis_vertical_style .at300b .at-icon-wrapper, .at-follow-tbx-element .addthis_vertical_style .at300m .addthis_follow_label, .at-follow-tbx-element .addthis_vertical_style .at300m .at-icon-wrapper {
                display: inline-block;
                vertical-align: middle;
                margin-right: 5px;
            }

            .at-follow-tbx-element .addthis_vertical_style .at300b:focus, .at-follow-tbx-element .addthis_vertical_style .at300b:hover, .at-follow-tbx-element .addthis_vertical_style .at300m:focus, .at-follow-tbx-element .addthis_vertical_style .at300m:hover {
                -webkit-transform: none;
                transform: none;
            }
    </style>
    <style type="text/css">
        .at4-jumboshare .at-share-btn {
            display: inline-block;
            margin-right: 13px;
            margin-top: 13px;
        }

            .at4-jumboshare .at-share-btn .at-icon {
                float: left;
                margin: 0 2px;
            }

            .at4-jumboshare .at-share-btn .at300bs {
                display: inline-block;
                float: left;
                cursor: pointer;
            }

        .at4-jumboshare .at4-mobile .at-share-btn .at-icon, .at4-jumboshare .at4-mobile .at-share-btn .at-icon-wrapper {
            margin: 0;
            padding: 0;
        }

        .at4-jumboshare .at4-mobile .at-share-btn {
            padding: 0;
        }

            .at4-jumboshare .at4-mobile .at-share-btn .at-label {
                display: none;
            }

        .at4-jumboshare .at4-count {
            font-size: 60px;
            line-height: 60px;
            font-family: Helvetica neue,arial;
            font-weight: 700;
        }

        .at4-jumboshare .at4-count-container {
            display: table-cell;
            text-align: center;
            min-width: 200px;
            vertical-align: middle;
            border-right: 1px solid #ccc;
            padding-right: 20px;
        }

        .at4-jumboshare .at4-share-container {
            display: table-cell;
            vertical-align: middle;
            padding-left: 20px;
        }

        .at4-jumboshare .at4-title {
            position: relative;
            font-size: 18px;
            line-height: 18px;
            bottom: 2px;
        }

        .at4-jumboshare .at4-spacer {
            height: 1px;
            display: block;
            visibility: hidden;
            opacity: 0;
        }

        .at4-jumboshare .at-share-btn {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            margin: 0 2px;
            line-height: 0;
            padding: 0;
            overflow: hidden;
            text-decoration: none;
            text-transform: none;
            color: #fff;
            cursor: pointer;
            -webkit-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
            border: 0;
            background-color: transparent;
        }

            .at4-jumboshare .at-share-btn:focus, .at4-jumboshare .at-share-btn:hover {
                -webkit-transform: translateY(-4px);
                transform: translateY(-4px);
                color: #fff;
                text-decoration: none;
            }

        .at4-jumboshare .at-label {
            font-family: helvetica neue,helvetica,arial,sans-serif;
            font-size: 9pt;
            padding: 0 15px 0 0;
            margin: 0;
            height: 2pc;
            line-height: 2pc;
            background: none;
        }

        .at4-jumboshare .at-share-btn:hover, .at4-jumboshare .at-share-btn:link {
            text-decoration: none;
        }

        .at4-jumboshare .at-share-btn::-moz-focus-inner {
            border: 0;
            padding: 0;
        }
    </style>
    <style type="text/css">
        div.at-share-close-control.ats-dark, div.at-share-open-control-left.ats-dark, div.at-share-open-control-right.ats-dark {
            background: #262b30;
        }

        div.at-share-close-control.ats-light, div.at-share-open-control-left.ats-light, div.at-share-open-control-right.ats-light {
            background: #fff;
        }

        div.at-share-close-control.ats-gray, div.at-share-open-control-left.ats-gray, div.at-share-open-control-right.ats-gray {
            background: #f2f2f2;
        }

        .atss {
            position: fixed;
            *position: absolute;
            top: 20%;
            width: 3pc;
            z-index: 100020;
            background: none;
        }

        .at-share-close-control {
            position: relative;
            width: 3pc;
            overflow: auto;
        }

        .at-share-open-control-left {
            position: fixed;
            top: 20%;
            z-index: 100020;
            left: 0;
            width: 22px;
        }

        .at-share-close-control .at4-arrow.at-left {
            float: right;
        }

        .atss-left {
            left: 0;
            float: left;
            right: auto;
        }

        .atss-right {
            left: auto;
            float: right;
            right: 0;
        }

            .atss-right.at-share-close-control .at4-arrow.at-right {
                position: relative;
                right: 0;
                overflow: auto;
            }

            .atss-right.at-share-close-control .at4-arrow {
                float: left;
            }

        .at-share-open-control-right {
            position: fixed;
            top: 20%;
            z-index: 100020;
            right: 0;
            width: 22px;
            float: right;
        }

        .atss-right .at-share-close-control .at4-arrow {
            float: left;
        }

        .atss.atss-right a {
            float: right;
        }

        .atss.atss-right .at4-share-title {
            float: right;
            overflow: hidden;
        }

        .atss .at-share-btn, .atss a {
            position: relative;
            display: block;
            *border: none;
            width: 3pc;
            margin: 0;
            outline-offset: -1px;
            text-align: center;
            float: left;
            -webkit-transition: width .15s ease-in-out;
            transition: width .15s ease-in-out;
            overflow: hidden;
            background: #e8e8e8;
            z-index: 100030;
            cursor: pointer;
        }

        .at-share-btn::-moz-focus-inner {
            border: 0;
            padding: 0;
        }

        .atss-right .at-share-btn {
            float: right;
        }

        .atss .at-share-btn {
            border: 0;
            padding: 0;
        }

            .atss .at-share-btn:focus, .atss .at-share-btn:hover, .atss a:focus, .atss a:hover {
                width: 4pc;
            }

            .atss .at-share-btn .at-icon-wrapper, .atss a .at-icon-wrapper {
                display: block;
                padding: 8px 0;
            }

        .addthis-smartlayers-ie8 .atss .at-share-btn:hover, .addthis-smartlayers-ie8 .atss a:hover {
            width: 3pc;
        }

        .atss .at-share-btn:last-child, .atss a:last-child {
            border: none;
        }

        .atss .at-share-btn span .at-icon, .atss a span .at-icon {
            position: relative;
            top: 0;
            left: 0;
            display: block;
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 2pc;
            height: 2pc;
            line-height: 2pc;
            border: none;
            padding: 0;
            margin: 0 auto;
            overflow: hidden;
            cursor: pointer;
            cursor: hand;
        }

        .addthis-smartlayers-quirks-mode .at4-share-count-anchor {
            height: 55px;
        }

        .at4-share .at4-share-count-container {
            position: absolute;
            left: 0;
            right: auto;
            top: auto;
            bottom: 0;
            width: 100%;
            color: #fff;
            background: inherit;
        }

        .at4-share .at4-share-count, .at4-share .at4-share-count-container {
            line-height: 1pc;
            font-size: 10px;
        }

        .at4-share .at4-share-count {
            text-indent: 0;
            font-family: Arial,Helvetica Neue,Helvetica,sans-serif;
            font-weight: 200;
            width: 100%;
            height: 1pc;
        }

        .at4-share .at4-share-count-anchor {
            padding-bottom: 8px;
            *padding-bottom: 0;
            text-decoration: none;
            -webkit-transition: padding .15s ease-in-out .15s,width .15s ease-in-out;
            transition: padding .15s ease-in-out .15s,width .15s ease-in-out;
        }
    </style>
    <style type="text/css">
        .at4-recommendedbox-outer-container {
            display: inline;
        }

        .at4-recommended-outer {
            position: static;
        }

        .at4-recommended {
            top: 20%;
            margin: 0;
            text-align: center;
            font-weight: 400;
            font-size: 13px;
            line-height: 17px;
            color: #666;
        }

            .at4-recommended.at-inline .at4-recommended-horizontal {
                text-align: left;
            }

        .at4-recommended-recommendedbox {
            padding: 0;
            z-index: inherit;
        }

        .at4-recommended-recommended {
            padding: 40px 0;
        }

        .at4-recommended-horizontal {
            max-height: 340px;
        }

        .at4-recommended.at-medium .at4-recommended-horizontal {
            max-height: 15pc;
        }

        .at4-recommended.at4-minimal.at-medium .at4-recommended-horizontal {
            padding-top: 10px;
            max-height: 230px;
        }

        .at4-recommended-text-only .at4-recommended-horizontal {
            max-height: 130px;
        }

        .at4-recommended-horizontal {
            padding-top: 5px;
            overflow-y: hidden;
        }

        .at4-minimal {
            background: none;
            color: #000;
            border: none !important;
            box-shadow: none !important;
        }

        @media screen and (max-width:900px) {
            .at4-recommended-horizontal .at4-recommended-item, .at4-recommended-horizontal .at4-recommended-item .at4-recommended-item-img {
                width: 15pc;
            }
        }

        .at4-recommended.at4-minimal .at4-recommended-horizontal .at4-recommended-item .at4-recommended-item-caption {
            padding: 0 0 10px;
        }

        .at4-recommended.at4-minimal .at4-recommended-horizontal .at4-recommended-item-caption {
            padding: 20px 0 0 !important;
        }

        .addthis-smartlayers .at4-recommended .at-h3.at-recommended-label {
            margin: 0;
            padding: 0;
            font-weight: 300;
            font-size: 18px;
            line-height: 24px;
            color: #464646;
            width: 100%;
            display: inline-block;
            *display: inline;
            zoom: 1;
        }

        .addthis-smartlayers .at4-recommended.at-inline .at-h3.at-recommended-label {
            text-align: left;
        }

        #at4-thankyou .addthis-smartlayers .at4-recommended.at-inline .at-h3.at-recommended-label {
            text-align: center;
        }

        .at4-recommended .at4-recommended-item {
            display: inline-block;
            *display: inline;
            zoom: 1;
            position: relative;
            background: #fff;
            border: 1px solid #c5c5c5;
            width: 200px;
            margin: 10px;
        }

        .addthis_recommended_horizontal .at4-recommended-item {
            border: none;
        }

        .at4-recommended .at4-recommended-item .sponsored-label {
            color: #666;
            font-size: 9px;
            position: absolute;
            top: -20px;
        }

        .at4-recommended .at4-recommended-item-img .at-tli, .at4-recommended .at4-recommended-item-img a {
            position: absolute;
            left: 0;
        }

        .at4-recommended.at-inline .at4-recommended-horizontal .at4-recommended-item {
            margin: 10px 20px 0 0;
        }

        .at4-recommended.at-medium .at4-recommended-horizontal .at4-recommended-item {
            margin: 10px 10px 0 0;
        }

        .at4-recommended.at-medium .at4-recommended-item {
            width: 140px;
            overflow: hidden;
        }

        .at4-recommended .at4-recommended-item .at4-recommended-item-img {
            position: relative;
            text-align: center;
            width: 100%;
            height: 200px;
            line-height: 0;
            overflow: hidden;
        }

            .at4-recommended .at4-recommended-item .at4-recommended-item-img a {
                display: block;
                width: 100%;
                height: 200px;
            }

        .at4-recommended.at-medium .at4-recommended-item .at4-recommended-item-img, .at4-recommended.at-medium .at4-recommended-item .at4-recommended-item-img a {
            height: 140px;
        }

        .at4-recommended .at4-recommended-item .at4-recommended-item-img img {
            position: absolute;
            top: 0;
            left: 0;
            min-height: 0;
            min-width: 0;
            max-height: none;
            max-width: none;
            margin: 0;
            padding: 0;
        }

        .at4-recommended .at4-recommended-item .at4-recommended-item-caption {
            height: 74px;
            overflow: hidden;
            padding: 20px;
            text-align: left;
            -ms-box-sizing: content-box;
            -o-box-sizing: content-box;
            box-sizing: content-box;
        }

        .at4-recommended.at-medium .at4-recommended-item .at4-recommended-item-caption {
            height: 50px;
            padding: 15px;
        }

        .at4-recommended .at4-recommended-item .at4-recommended-item-caption .at-h4 {
            height: 54px;
            margin: 0 0 5px;
            padding: 0;
            overflow: hidden;
            word-wrap: break-word;
            font-size: 14px;
            font-weight: 400;
            line-height: 18px;
            text-align: left;
        }

        .at4-recommended.at-medium .at4-recommended-item .at4-recommended-item-caption .at-h4 {
            font-size: 9pt;
            line-height: 1pc;
            height: 33px;
        }

        .at4-recommended .at4-recommended-item:hover .at4-recommended-item-caption .at-h4 {
            text-decoration: underline;
        }

        .at4-recommended a:link, .at4-recommended a:visited {
            text-decoration: none;
            color: #464646;
        }

        .at4-recommended .at4-recommended-item .at4-recommended-item-caption .at-h4 a:hover {
            text-decoration: underline;
            color: #000;
        }

        .at4-recommended .at4-recommended-item .at4-recommended-item-caption small {
            display: block;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            font-size: 11px;
            color: #666;
        }

        .at4-recommended.at-medium .at4-recommended-item .at4-recommended-item-caption small {
            font-size: 9px;
        }

        .at4-recommended .at4-recommended-vertical {
            padding: 15px 0 0;
        }

            .at4-recommended .at4-recommended-vertical .at4-recommended-item {
                display: block;
                width: auto;
                max-width: 100%;
                height: 60px;
                border: none;
                margin: 0 0 15px;
                box-shadow: none;
                background: none;
            }

        .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-img, .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-img img {
            width: 60px;
            height: 60px;
            float: left;
        }

        .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption {
            border-top: none;
            margin: 0;
            height: 60px;
            padding: 3px 5px;
        }

        .at4-recommended .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption .at-h4 {
            height: 38px;
            margin: 0;
        }

        .at4-recommended .at4-recommended-vertical .at4-recommended-item .at4-recommended-item-caption small {
            position: absolute;
            bottom: 0;
        }

        .at4-recommended .at-recommended-label.at-vertical {
            text-align: left;
        }

        .at4-no-image-light-recommended, .at4-no-image-minimal-recommended {
            background-color: #f2f2f2 !important;
        }

        .at4-no-image-gray-recommended {
            background-color: #e6e6e5 !important;
        }

        .at4-no-image-dark-recommended {
            background-color: #4e555e !important;
        }

        .at4-recommended .at4-recommended-item-placeholder-img {
            background-repeat: no-repeat !important;
            background-position: center !important;
            width: 100% !important;
            height: 100% !important;
        }

        .at4-recommended-horizontal .at4-no-image-dark-recommended .at4-recommended-item-placeholder-img {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAfCAYAAACCox+xAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjlFNUUyQTg3MTI0RDExRTM4NzAwREJDRjlCQzAyMUVFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjlFNUUyQTg4MTI0RDExRTM4NzAwREJDRjlCQzAyMUVFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OUU1RTJBODUxMjREMTFFMzg3MDBEQkNGOUJDMDIxRUUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6OUU1RTJBODYxMjREMTFFMzg3MDBEQkNGOUJDMDIxRUUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6oCfPiAAABfUlEQVR42uyWTU/DMAyGm3bdBxp062hHe+PC//9HCIkDYpNAO7CPAuWN5Eohyhpno2GHWqq8pO78xHHsiLquH4L/l6cwuBAZaOPKs//YBFIJIR59UiAt7huYi90aE/UQakTDLaL26RUEAAJqiefm93T9Bpj1X4O0bY0OIUXCpYBJvYDAUWyAUCWliHGTcnpqRMaM72ImRAJVknYG+eb4YEDIBeU0zGnsBLK1ODogYSsLhDwIJeVVk18lzfNA4ERGZNXi59UCIQhiYDilpSm/jp4awLxDvWhlf4/nGe8+LLuSt+SZul28ggaHG6gNVhDR+IuRFzOoxGKWwG7vVFm5AAQxgcqYpzrjFjR9zwPH5LSuT7XlNr2MQm5LzqjLpncNNaM+s8M27Y60g3FwhoSMzrtUQllgLtRs5pZ2cB4IhbvQbGRZv1NsrhyS8+SI5Mo9RJWpjAI1xqKL+0iEP180vy214JbeR12AyOgsHI7e0NfFyKv0ID1ID+IqPwIMAOeljGQOryBmAAAAAElFTkSuQmCC) !important;
        }

        .at4-recommended-vertical .at4-no-image-dark-recommended .at4-recommended-item-placeholder-img {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAOCAYAAADwikbvAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjAzREMyNTM2MTI0RjExRTM4NzAwREJDRjlCQzAyMUVFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjAzREMyNTM3MTI0RjExRTM4NzAwREJDRjlCQzAyMUVFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MDNEQzI1MzQxMjRGMTFFMzg3MDBEQkNGOUJDMDIxRUUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDNEQzI1MzUxMjRGMTFFMzg3MDBEQkNGOUJDMDIxRUUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5GfbtkAAAAxklEQVR42qRSTQvCMAxduk53mEOHKFPP/v8/5cGTiIibivVFUomlG7gFHvloXpKmJefcPhkmNyvGEWj+IOZA6ckPImoxxVwOLvCvXUzkpayNCpRQK64IbOBnAYGAXMeMslNlU+CzrIEdCkxi5DPAoz6BE8ZuVNdKJuL8rS9sv62IXlCHyP0KqKUKZXK9uwkSLVArfwpVR3b225kXwovibcP+jC4jUtfWPZmfqJJnYlkAM128j1z0nHWKSUbIKDL/msHktwADAPptQo+vkZNLAAAAAElFTkSuQmCC) !important;
        }

        .at4-recommended-horizontal .at4-no-image-gray-recommended .at4-recommended-item-placeholder-img, .at4-recommended-horizontal .at4-no-image-light-recommended .at4-recommended-item-placeholder-img, .at4-recommended-horizontal .at4-no-image-minimal-recommended .at4-recommended-item-placeholder-img {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAfCAYAAACCox+xAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjAzREMyNTMyMTI0RjExRTM4NzAwREJDRjlCQzAyMUVFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjAzREMyNTMzMTI0RjExRTM4NzAwREJDRjlCQzAyMUVFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OUU1RTJBODkxMjREMTFFMzg3MDBEQkNGOUJDMDIxRUUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6OUU1RTJBOEExMjREMTFFMzg3MDBEQkNGOUJDMDIxRUUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6dfDQvAAABg0lEQVR42uyWS0vDQBDH82jaKNW0qUltbl68e/Di98eLBz+CCB5EBaWIpUat/4UJLMuame1j7SEDYbqbKfPLvHbDi8ur8+D/5T4K9kR6xrr27D+xgdS3N9d3PilQFmcNzN6mxkbdhxrQcoGofXkFAUAINcVzrG2vsP8KmJdtg7SlxoRQouBywOReQOAosUDoklPEpEU5XDciqeB/iRAig6pIO4P8CHysBBDqg0palrR2Alkwjj5RsDUDoRqhorpq6quifRkInKiIPLf4eWIgQoLoWbq0stXXn10DmDeoR2PsL/E84N0Hk5Wypc70dMkGGhzOoeb4gpjW34K6GEFljFkGu6XTZJUCEMQBVCHs6kI60MycB47FyUmo20oPvYJCzhVnvIsR3zg5ghoRTNpyHKTBBhIJTt6pFsoZ9iLDZswcB5uBULhnho0a66eazaFDca59Hym1e4guQ4rCO4Fu/T4Sw8Gk+c3MghN6H+8CRKVg4tB6fV8XI6/SgXQgHYir/AowAMU5TskhKVUNAAAAAElFTkSuQmCC) !important;
        }

        .at4-recommended-vertical .at4-no-image-gray-recommended .at4-recommended-item-placeholder-img, .at4-recommended-vertical .at4-no-image-light-recommended .at4-recommended-item-placeholder-img, .at4-recommended-vertical .at4-no-image-minimal-recommended .at4-recommended-item-placeholder-img {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAOCAYAAADwikbvAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjAzREMyNTNBMTI0RjExRTM4NzAwREJDRjlCQzAyMUVFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjAzREMyNTNCMTI0RjExRTM4NzAwREJDRjlCQzAyMUVFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MDNEQzI1MzgxMjRGMTFFMzg3MDBEQkNGOUJDMDIxRUUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDNEQzI1MzkxMjRGMTFFMzg3MDBEQkNGOUJDMDIxRUUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz65Fr9cAAAA0ElEQVR42qRRuQrCQBDd3SSaIgYNosSrtLew8f+xsfAnYmEVRMR4YHwjExjCbsBk4DHHzptjR2+2u7VqJ3efjTNQ/EEMgbgiv46H/QNTDPnhCv/mYiLPI21EIIaaUEVgBj+oETQQypgRtidsXfNJpsACBXo28gWgUd9AjrEL0TXhiSh/XhWudlZI/kCdLPtFUGMRCni9p6kl+kAq/D5UavmzX2fNd87obsCSfztnrOR0rjvTiRImkoyAQQNRyZ2jhjenGNVBOpF1WZatyV8BBgBJ+irgS/KHdAAAAABJRU5ErkJggg==) !important;
        }

        #at-drawer.ats-dark, .at4-recommended.ats-dark .at4-recommended-horizontal .at4-recommended-item-caption, .at4-recommended.ats-dark .at4-recommended-vertical .at4-recommended-item-caption {
            background: #262b30;
        }

        #at-drawer.ats-gray, .at4-recommended.ats-gray .at4-recommended-horizontal .at4-recommended-item-caption {
            background: #f2f2f2;
        }

        #at-drawer.ats-light, .at4-recommended.ats-light .at4-recommended-horizontal .at4-recommended-item-caption {
            background: #fff;
        }

        .at4-recommended.ats-dark .at4-recommended-vertical .at4-recommended-item {
            background: none;
        }

        .at4-recommended.ats-dark .at4-recommended-item .at4-recommended-item-caption a:hover, .at4-recommended.ats-dark .at4-recommended-item .at4-recommended-item-caption a:link, .at4-recommended.ats-dark .at4-recommended-item .at4-recommended-item-caption a:visited, .at4-recommended.ats-dark .at4-recommended-item .at4-recommended-item-caption small, .at4-recommended.ats-dark .at4-recommended-item-caption, .at4-recommended.ats-dark .at-logo a:hover, .at4-recommended.ats-dark .at-recommended-label.at-vertical {
            color: #fff;
        }

        .at4-recommended-vertical-logo {
            padding-top: 0;
            text-align: left;
        }

            .at4-recommended-vertical-logo .at4-logo-container {
                line-height: 10px;
            }

        .at4-recommended-horizontal-logo {
            text-align: center;
        }

        .at4-recommended.at-inline .at4-recommended-horizontal-logo {
            text-align: left;
        }

        #at4-thankyou .at4-recommended.at-inline .at4-recommended-horizontal {
            text-align: center;
        }

        .at4-recommended .at-logo {
            margin: 10px 0 0;
            padding: 0;
            height: 25px;
            overflow: auto;
            -ms-box-sizing: content-box;
            -o-box-sizing: content-box;
            box-sizing: content-box;
        }

        .at4-recommended.at-inline .at4-recommended-horizontal .at-logo {
            text-align: left;
        }

        .at4-recommended .at4-logo-container a.at-sponsored-link {
            color: #666;
        }

        .at4-recommended-class .at4-logo-container a:hover, .at4-recommendedbox-outer-container .at4-recommended-recommendedbox .at4-logo-container a:hover {
            color: #000;
        }
    </style>
    <style type="text/css">
        .at-recommendedjumbo-outer-container {
            margin: 0;
            padding: 0;
            border: 0;
            background: none;
            color: #000;
        }

        .at-recommendedjumbo-footer {
            position: relative;
            width: 100%;
            height: 510px;
            overflow: hidden;
            -webkit-transition: all .3s ease-in-out;
            transition: all .3s ease-in-out;
        }

        .at-mobile .at-recommendedjumbo-footer {
            height: 250px;
        }

        .at-recommendedjumbo-footer #bg-link:after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0,0,0,.75);
        }

        .at-recommendedjumbo-footer:hover #bg-link:after {
            background: rgba(0,0,0,.85);
        }

        .at-recommendedjumbo-footer *, .at-recommendedjumbo-footer :after, .at-recommendedjumbo-footer :before {
            box-sizing: border-box;
        }

        .at-recommendedjumbo-footer:hover #at-recommendedjumbo-footer-bg {
            -webkit-animation: atRecommendedJumboAnimatedBackground 1s ease-in-out 1;
            animation: atRecommendedJumboAnimatedBackground 1s ease-in-out 1;
            -webkit-animation-fill-mode: forwards;
            animation-fill-mode: forwards;
        }

        .at-recommendedjumbo-footer #at-recommendedjumbo-top-holder {
            position: absolute;
            top: 0;
            padding: 0 40px;
            width: 100%;
        }

        .at-mobile .at-recommendedjumbo-footer #at-recommendedjumbo-top-holder {
            padding: 0 20px;
        }

        .at-recommendedjumbo-footer .at-recommendedjumbo-footer-inner {
            position: relative;
            text-align: center;
            font-family: helvetica,arial,sans-serif;
            z-index: 2;
            width: 100%;
        }

        .at-recommendedjumbo-footer #at-recommendedjumbo-label-holder {
            margin: 40px 0 0;
            max-height: 30px;
        }

        .at-mobile .at-recommendedjumbo-footer #at-recommendedjumbo-label-holder {
            margin: 20px 0 0;
            max-height: 20px;
        }

        .at-recommendedjumbo-footer #at-recommendedjumbo-label {
            font-weight: 300;
            font-size: 24px;
            line-height: 24px;
            color: #fff;
            margin: 0;
        }

        .at-mobile .at-recommendedjumbo-footer #at-recommendedjumbo-label {
            font-weight: 150;
            font-size: 14px;
            line-height: 14px;
        }

        .at-recommendedjumbo-footer #at-recommendedjumbo-title-holder {
            margin: 20px 0 0;
            min-height: 3pc;
            max-height: 78pt;
        }

        .at-mobile .at-recommendedjumbo-footer #at-recommendedjumbo-title-holder {
            margin: 10px 0 0;
            min-height: 24px;
            max-height: 54px;
        }

        .at-recommendedjumbo-footer #at-recommendedjumbo-content-title {
            font-size: 3pc;
            line-height: 52px;
            font-weight: 700;
            margin: 0;
        }

        .at-mobile .at-recommendedjumbo-footer #at-recommendedjumbo-content-title {
            font-size: 24px;
            line-height: 27px;
        }

        .at-recommendedjumbo-footer a {
            text-decoration: none;
            color: #fff;
        }

            .at-recommendedjumbo-footer a:visited {
                color: #fff;
            }

        .at-recommendedjumbo-footer small {
            margin: 20px 0 0;
            display: inline-block;
            height: 2pc;
            line-height: 2pc;
            font-size: 14px;
            color: #ccc;
            cursor: default;
        }

        .at-mobile .at-recommendedjumbo-footer small {
            margin: 10px 0 0;
            height: 14px;
            line-height: 14px;
            font-size: 9pt;
        }

        .at-recommendedjumbo-footer .at-logo-container {
            position: absolute;
            bottom: 20px;
            margin: auto;
            left: 0;
            right: 0;
        }

        .at-mobile .at-recommendedjumbo-footer .at-logo-container {
            bottom: 10px;
        }

        .at-recommendedjumbo-footer a.at-sponsored-link {
            color: #ccc;
        }

        .at-recommendedjumbo-footer div #at-recommendedjumbo-logo-link {
            padding: 2px 0 0 11px;
            text-decoration: none;
            line-height: 20px;
            font-family: helvetica,arial,sans-serif;
            font-size: 9px;
            color: #ccc;
        }

        @-webkit-keyframes atRecommendedJumboAnimatedBackground {
            0% {
                -webkit-transform: scale(1,1);
                transform: scale(1,1);
            }

            to {
                -webkit-transform: scale(1.1,1.1);
                transform: scale(1.1,1.1);
            }
        }

        @keyframes atRecommendedJumboAnimatedBackground {
            0% {
                -webkit-transform: scale(1,1);
                transform: scale(1,1);
            }

            to {
                -webkit-transform: scale(1.1,1.1);
                transform: scale(1.1,1.1);
            }
        }
    </style>
    <style type="text/css">
        .at-resp-share-element {
            position: relative;
            padding: 0;
            margin: 0;
            font-size: 0;
            line-height: 0;
        }

            .at-resp-share-element:after, .at-resp-share-element:before {
                content: " ";
                display: table;
            }

            .at-resp-share-element.at-mobile .at-label {
                display: none;
            }

            .at-resp-share-element .at-share-btn {
                display: inline-block;
                *display: inline;
                *zoom: 1;
                margin: 0 2px 5px;
                padding: 0;
                overflow: hidden;
                line-height: 0;
                text-decoration: none;
                text-transform: none;
                color: #fff;
                cursor: pointer;
                -webkit-transition: all .2s ease-in-out;
                transition: all .2s ease-in-out;
                border: 0;
                background-color: transparent;
            }

                .at-resp-share-element .at-share-btn::-moz-focus-inner {
                    border: 0;
                    padding: 0;
                }

                .at-resp-share-element .at-share-btn:focus, .at-resp-share-element .at-share-btn:hover {
                    -webkit-transform: translateY(-4px);
                    transform: translateY(-4px);
                    color: #fff;
                    text-decoration: none;
                }

                .at-resp-share-element .at-share-btn .at-icon-wrapper {
                    padding: 5px;
                }

                .at-resp-share-element .at-share-btn.at-share-btn.at-svc-compact:hover {
                    -webkit-transform: none;
                    transform: none;
                }

                .at-resp-share-element .at-share-btn .at-label {
                    font-family: helvetica neue,helvetica,arial,sans-serif;
                    font-size: 9pt;
                    padding: 0 15px 0 0;
                    margin: 0 0 0 5px;
                    height: 2pc;
                    line-height: 2pc;
                    background: none;
                }

            .at-resp-share-element .at-icon, .at-resp-share-element .at-label {
                float: left;
                cursor: pointer;
            }

            .at-resp-share-element .at4-share-count-container {
                text-decoration: none;
                float: none;
                padding-left: 15px;
                font-size: 9pt;
            }

        .at-mobile .at-resp-share-element .at-label {
            display: none;
        }

        .at-resp-share-element.at-mobile .at-share-btn {
            margin-right: 5px;
        }

        .at-mobile .at-resp-share-element .at-share-btn {
            padding: 5px;
            margin-right: 5px;
        }
    </style>
    <style type="text/css">
        .at-share-tbx-element.at-white-icons .at-custom-share-anchor {
            color: transparent;
            background-color: transparent;
            max-width: none;
            max-height: none;
            margin: 0;
            display: inline;
        }

        .at-share-tbx-element.circular .at-share-btn, .at-share-tbx-element.rounded .at-share-btn {
            background-color: transparent;
        }

        .at-share-tbx-element.addthis_32x32_white_style.circular .at4-icon, .at-share-tbx-element.addthis_32x32_white_style.circular .at300bs {
            border-radius: 50%;
        }

        .at-share-tbx-element.addthis_32x32_white_style.rounded .at4-icon, .at-share-tbx-element.addthis_32x32_white_style.rounded .at300bs {
            border-radius: 4px;
        }

        .at-share-tbx-element.addthis_32x32_style .at-share-btn, .at-share-tbx-element.addthis_32x32_white_style .at-share-btn {
            max-width: 2pc;
            max-height: 2pc;
        }

        .at-share-tbx-element.addthis_20x20_style .at-share-btn, .at-share-tbx-element.addthis_20x20_white_style .at-share-btn {
            max-width: 20px;
            max-height: 20px;
        }

        .at-share-tbx-element .at-share-tbx-element a.at300b, .at-share-tbx-element .at-share-tbx-element button.at300b, .at-share-tbx-element a.at300b, .at-share-tbx-element button.at300b {
            display: inline-block;
            width: auto;
        }

        .at-share-tbx-element .at-share-btn {
            margin: 2px 2px 0;
            display: inline-block;
            overflow: hidden;
            border: 0;
            padding: 0;
            cursor: pointer;
            line-height: 0;
            text-decoration: none;
            text-transform: none;
            -webkit-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
            background-color: transparent;
        }

            .at-share-tbx-element .at-share-btn:focus, .at-share-tbx-element .at-share-btn:hover {
                -webkit-transform: translateY(-4px);
                transform: translateY(-4px);
                outline-offset: -1px;
            }

            .at-share-tbx-element .at-share-btn::-moz-focus-inner {
                border: 0;
                padding: 0;
            }

        .at-share-tbx-element .at-share-tbx-element .at-share-btn .at300bs {
            display: inline-block;
        }

        .at-share-tbx-element .fb_iframe_widget span {
            vertical-align: baseline !important;
        }

        .at-share-tbx-element .fb_iframe_widget {
            display: block;
        }

        .at-share-tbx-element .addthis_counter.addthis_bubble_style {
            margin: 0 2px;
            vertical-align: top;
            display: inline-block;
        }

        .at-share-tbx-element .at-share-btn {
            max-width: 1pc;
            max-height: 1pc;
        }

        .at-share-tbx-element.at-share-tbx-native .at300b {
            vertical-align: middle;
        }

        .at-custom-share-span {
            cursor: pointer;
            display: inline-block;
            padding: 0;
            margin: 0;
        }
    </style>
    <style type="text/css">
        .at_flat_counter {
            height: 1pc;
            margin: 2px 2px 0 8px;
            padding: 0 6px;
            line-height: 1pc;
            font-size: 10px;
            position: relative;
            left: -1px;
            display: inline-block;
            background: #ebebeb;
            text-transform: uppercase;
            font-family: helvetica,arial,sans-serif;
            font-weight: 700;
            color: #32363b;
            cursor: pointer;
            vertical-align: top;
            -webkit-transition: all .2s ease;
            transition: all .2s ease;
        }

            .at_flat_counter:after {
                top: 3px;
                left: -4px;
                content: "";
                position: absolute;
                border-width: 5px 8px 5px 0;
                border-style: solid;
                border-color: transparent #ebebeb transparent transparent;
                display: block;
                width: 0;
                height: 0;
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }

            .at_flat_counter:hover {
                background: #e1e2e2;
            }

            .at_flat_counter:after:hover {
                border-color: transparent #e1e2e2 transparent transparent;
            }

        .addthis_20x20_style .at_flat_counter {
            height: 21px;
            padding: 0 10px;
            line-height: 22px;
            font-size: 11px;
        }

            .addthis_20x20_style .at_flat_counter:after {
                top: 6px;
                left: -4px;
            }

        .addthis_32x32_style .at_flat_counter, .addthis_32x32_white_style .at_flat_counter {
            height: 2pc;
            margin: 0 2px 0 10px;
            line-height: 2pc;
            padding: 0 9pt;
            font-size: 14px;
        }

            .addthis_32x32_style .at_flat_counter:after, .addthis_32x32_white_style .at_flat_counter:after {
                top: 11px;
                left: -6px;
            }
    </style>
    <style type="text/css">
        .at4-thankyou-background {
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            -webkit-overflow-scrolling: touch;
            z-index: 9999999;
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpizCuu/sRABGBiIBKMKqSOQoAAAwC8KgJipENhxwAAAABJRU5ErkJggg==);
            background: hsla(217,6%,46%,.95);
            *background-image: url(//s7.addthis.com/static/3a5acbc470441e20a9b741217dc5f746.png);
            _background-image: url(//s7.addthis.com/static/3a5acbc470441e20a9b741217dc5f746.png);
        }

            .at4-thankyou-background.at-thankyou-shown {
                position: fixed;
            }

        .at4-thankyou-inner {
            position: absolute;
            width: 100%;
            top: 10%;
            left: 50%;
            margin-left: -50%;
            text-align: center;
        }

        .at4-thankyou-mobile .at4-thankyou-inner {
            top: 5%;
        }

        .thankyou-description {
            font-weight: 400;
        }

        .at4-thankyou-background .at4lb-inner {
            position: relative;
            width: 100%;
            height: 100%;
        }

            .at4-thankyou-background .at4lb-inner .at4x {
                position: absolute;
                top: 15px;
                right: 15px;
                display: block;
                width: 20px;
                height: 20px;
                padding: 20px;
                margin: 0;
                cursor: pointer;
                -webkit-transition: opacity .25s ease-in;
                transition: opacity .25s ease-in;
                opacity: .4;
                background: url("data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMTEvMTMvMTKswDp5AAAAd0lEQVQ4jb2VQRLAIAgDE///Z3qqY1FAhalHMCsCIkVEAIAkkVgvp2lDBgYAnAyHkWotLccNrEd4A7X2TqIdqLfnWBAdaF5rJdyJfjtPH5GT37CaGhoVq3nOm/XflUuLUto2pY1d+vRKh0Pp+MrAVtDe2JkvYNQ+jVSEEFmOkggAAAAASUVORK5CYII=") no-repeat center center;
                *background: url(//s7.addthis.com/static/5092b14c9020eaa68c3de74da2219940.png) no-repeat center center;
                _background: url(//s7.addthis.com/static/5092b14c9020eaa68c3de74da2219940.png) no-repeat center center;
                overflow: hidden;
                text-indent: -99999em;
                border: 1px solid transparent;
            }

                .at4-thankyou-background .at4lb-inner .at4x:focus, .at4-thankyou-background .at4lb-inner .at4x:hover {
                    border: 1px solid #fff;
                    border-radius: 50%;
                    outline: 0;
                }

            .at4-thankyou-background .at4lb-inner #at4-palogo.at4-logo {
                position: absolute;
                bottom: 10px;
                display: inline-block;
                text-decoration: none;
                font-family: helvetica,arial,sans-serif;
                font-size: 11px;
                cursor: pointer;
                -webkit-transition: opacity .25s ease-in;
                moz-transition: opacity .25s ease-in;
                transition: opacity .25s ease-in;
                opacity: .5;
                z-index: 100020;
                color: #fff;
                left: 15px;
                padding: 2px 0 0 13px;
            }

                .at4-thankyou-background .at4lb-inner #at4-palogo.at4-logo:hover, .at4-thankyou-background.ats-dark .at4lb-inner a#at4-palogo.at4-logo:hover {
                    text-decoration: none;
                    color: #fff;
                    opacity: 1;
                }

        .at4-thankyou-background.ats-dark {
            background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABtJREFUeNpiZGBgeMZABGBiIBKMKqSOQoAAAwB+cQD6hqlbCwAAAABJRU5ErkJggg==");
            background: rgba(0,0,0,.85);
            *background-image: url(//s7.addthis.com/static/3d6d51306260da0e9d022b2529a558c8.png);
            _background-image: url(//s7.addthis.com/static/3d6d51306260da0e9d022b2529a558c8.png);
        }

        .at4-thankyou-background .thankyou-title {
            color: #fff;
            font-size: 38.5px;
            margin: 10px 20px;
            line-height: 38.5px;
        }

        .at4-thankyou-background.ats-dark .thankyou-description, .at4-thankyou-background.ats-dark .thankyou-title {
            color: #fff;
        }

        .at4-thankyou-background .thankyou-description {
            color: #fff;
            font-size: 18px;
            margin: 10px 0;
            line-height: 24px;
            padding: 0;
        }

        .at4-thankyou-mobile * {
            -webkit-overflow-scrolling: touch;
        }

        #at4-thankyou .at4-recommended-recommendedbox .at-logo {
            display: none;
        }

        .at4-thankyou .at-h3 {
            height: 49px;
            line-height: 49px;
            margin: 0 50px 0 20px;
            padding: 1px 0 0;
            font-family: helvetica neue,helvetica,arial,sans-serif;
            font-size: 1pc;
            font-weight: 700;
            color: #fff;
            text-shadow: 0 1px #000;
        }

        .at4-thanks {
            padding-top: 50px;
            text-align: center;
        }

            .at4-thanks label {
                display: block;
                margin: 0 0 15px;
                font-size: 1pc;
                line-height: 1pc;
            }

            .at4-thanks .at4-h2 {
                background: none;
                border: none;
                margin: 0 0 10px;
                padding: 0;
                font-family: helvetica neue,helvetica,arial,sans-serif;
                font-size: 28px;
                font-weight: 300;
                color: #000;
            }

            .at4-thanks .at4-thanks-icons {
                position: relative;
                height: 2pc;
            }

                .at4-thanks .at4-thanks-icons .at-thankyou-label {
                    display: block;
                    padding-bottom: 10px;
                    font-size: 14px;
                    color: #666;
                }

            .at4-thanks .at-follow .at-icon-wrapper {
                width: 2pc;
                height: 2pc;
            }
    </style>
    <style type="text/css">
        .at4-recommended-toaster {
            position: fixed;
            _position: absolute;
            top: auto;
            bottom: 0;
            right: 0;
            z-index: 100021;
        }

            .at4-recommended-toaster.ats-light {
                border: 1px solid #c5c5c5;
                background: #fff;
            }

            .at4-recommended-toaster.ats-gray {
                border: 1px solid #c5c5c5;
                background: #f2f2f2;
            }

            .at4-recommended-toaster.ats-dark {
                background: #262b30;
                color: #fff;
            }

            .at4-recommended-toaster .at4-recommended-container {
                padding-top: 0;
                margin: 0;
            }

        .at4-recommended.at4-recommended-toaster div.at-recommended-label {
            line-height: 1pc;
            font-size: 1pc;
            text-align: left;
            padding: 20px 0 0 20px;
        }

        .at4-toaster-outer .at4-recommended .at4-recommended-item .at4-recommended-item-caption .at-h4 {
            font-size: 11px;
            line-height: 11px;
            margin: 10px 0 6px;
            height: 30px;
        }

        .at4-recommended.at4-recommended-toaster div.at-recommended-label.ats-gray, .at4-recommended.at4-recommended-toaster div.at-recommended-label.ats-light {
            color: #464646;
        }

        .at4-recommended.at4-recommended-toaster div.at-recommended-label.ats-dark {
            color: #fff;
        }

        .at4-toaster-close-control {
            position: absolute;
            top: 0;
            right: 0;
            display: block;
            width: 20px;
            height: 20px;
            line-height: 20px;
            margin: 5px 5px 0 0;
            padding: 0;
            text-indent: -9999em;
        }

        .at4-toaster-open-control {
            position: fixed;
            right: 0;
            bottom: 0;
            z-index: 100020;
        }

        .at4-toaster-outer .at4-recommended-item {
            width: 90pt;
            border: 0;
            margin: 9px 10px 0;
        }

            .at4-toaster-outer .at4-recommended-item:first-child {
                margin-left: 20px;
            }

            .at4-toaster-outer .at4-recommended-item:last-child {
                margin-right: 20px;
            }

            .at4-toaster-outer .at4-recommended-item .at4-recommended-item-img {
                max-height: 90pt;
                max-width: 90pt;
            }

                .at4-toaster-outer .at4-recommended-item .at4-recommended-item-img img {
                    height: 90pt;
                    width: 90pt;
                }

            .at4-toaster-outer .at4-recommended-item .at4-recommended-item-caption {
                height: 30px;
                padding: 0;
                margin: 0;
                height: initial;
            }

        .at4-toaster-outer .ats-dark .at4-recommended-item .at4-recommended-item-caption {
            background: #262b30;
        }

        .at4-toaster-outer .at4-recommended .at4-recommended-item .at4-recommended-item-caption small {
            width: auto;
            line-height: 14px;
            margin: 0;
        }

        .at4-toaster-outer .at4-recommended.ats-dark .at4-recommended-item .at4-recommended-item-caption small {
            color: #fff;
        }

        .at4-recommended-toaster .at-logo {
            margin: 0 0 3px 20px;
            text-align: left;
        }

            .at4-recommended-toaster .at-logo .at4-logo-container.at-sponsored-logo {
                position: relative;
            }

        .at4-toaster-outer .at4-recommended-item .sponsored-label {
            text-align: right;
            font-size: 10px;
            color: #666;
            float: right;
            position: fixed;
            bottom: 6px;
            right: 20px;
            top: initial;
            z-index: 99999;
        }
    </style>
    <style type="text/css">
        .at4-whatsnext {
            position: fixed;
            _position: absolute;
            bottom: 0 !important;
            right: 0;
            background: #fff;
            border: 1px solid #c5c5c5;
            margin: -1px;
            width: 390px;
            height: 90pt;
            overflow: hidden;
            font-size: 9pt;
            font-weight: 400;
            color: #000;
            z-index: 1800000000;
        }

            .at4-whatsnext a {
                color: #666;
            }

            .at4-whatsnext .at-whatsnext-content {
                height: 90pt;
                position: relative;
            }

                .at4-whatsnext .at-whatsnext-content .at-branding {
                    position: absolute;
                    bottom: 15px;
                    right: 10px;
                    padding-left: 9px;
                    text-decoration: none;
                    line-height: 10px;
                    font-family: helvetica,arial,sans-serif;
                    font-size: 10px;
                    color: #666;
                }

                .at4-whatsnext .at-whatsnext-content .at-whatsnext-content-inner {
                    position: absolute;
                    top: 15px;
                    right: 20px;
                    bottom: 15px;
                    left: 140px;
                    text-align: left;
                    height: 105px;
                }

            .at4-whatsnext .at-whatsnext-content-inner a {
                display: inline-block;
                *display: block;
                *float: left;
            }

            .at4-whatsnext .at-whatsnext-content-inner div.at-h6 {
                text-align: left;
                margin: 0;
                padding: 0 0 3px;
                font-size: 11px;
                color: #666;
                cursor: default;
            }

            .at4-whatsnext .at-whatsnext-content .at-h3 {
                text-align: left;
                margin: 5px 0;
                padding: 0;
                line-height: 1.2em;
                font-weight: 400;
                font-size: 14px;
                height: 3pc;
            }

            .at4-whatsnext .at-whatsnext-content-inner a:link, .at4-whatsnext .at-whatsnext-content-inner a:visited {
                text-decoration: none;
                font-weight: 400;
                color: #464646;
            }

            .at4-whatsnext .at-whatsnext-content-inner a:hover {
                color: #000;
            }

            .at4-whatsnext .at-whatsnext-content-inner small {
                position: absolute;
                bottom: 15px;
                line-height: 10px;
                font-size: 11px;
                color: #666;
                cursor: default;
                text-align: left;
            }

            .at4-whatsnext .at-whatsnext-content .at-whatsnext-content-img {
                position: absolute;
                top: 0;
                left: 0;
                width: 90pt;
                height: 90pt;
                overflow: hidden;
            }

                .at4-whatsnext .at-whatsnext-content .at-whatsnext-content-img img {
                    position: absolute;
                    top: 0;
                    left: 0;
                    max-height: none;
                    max-width: none;
                }

            .at4-whatsnext .at-whatsnext-close-control {
                position: absolute;
                top: 0;
                right: 0;
                display: block;
                width: 20px;
                height: 20px;
                line-height: 20px;
                margin: 0 5px 0 0;
                padding: 0;
                text-indent: -9999em;
            }

        .at-whatsnext-open-control {
            position: fixed;
            right: 0;
            bottom: 0;
            z-index: 100020;
        }

        .at4-whatsnext.ats-dark {
            background: #262b30;
        }

            .at4-whatsnext.ats-dark .at-whatsnext-content .at-h3, .at4-whatsnext.ats-dark .at-whatsnext-content a.at4-logo:hover, .at4-whatsnext.ats-dark .at-whatsnext-content-inner a:link, .at4-whatsnext.ats-dark .at-whatsnext-content-inner a:visited {
                color: #fff;
            }

        .at4-whatsnext.ats-light {
            background: #fff;
        }

        .at4-whatsnext.ats-gray {
            background: #f2f2f2;
        }

        .at4-whatsnext.at-whatsnext-nophoto {
            width: 270px;
        }

            .at4-whatsnext.at-whatsnext-nophoto .at-whatsnext-content-img {
                display: none;
            }

            .at4-whatsnext.at-whatsnext-nophoto .at-whatsnext-content .at-whatsnext-content-inner {
                top: 15px;
                right: 0;
                left: 20px;
            }

                .at4-whatsnext.at-whatsnext-nophoto .at-whatsnext-content .at-whatsnext-content-inner.addthis_32x32_style {
                    top: 0;
                    right: 0;
                    left: 0;
                    padding: 45px 20px 0;
                    font-size: 20px;
                }

                .at4-whatsnext.at-whatsnext-nophoto .at-whatsnext-content .at-whatsnext-content-inner .at4-icon, .at4-whatsnext.at-whatsnext-nophoto .at-whatsnext-content .at-whatsnext-content-inner .at4-icon-fw, .at4-whatsnext.at-whatsnext-nophoto .at-whatsnext-content .at-whatsnext-content-inner .whatsnext-msg {
                    vertical-align: middle;
                }

        .at-whatsnext-img, .at-whatsnext-img-lnk {
            position: absolute;
            left: 0;
        }
    </style>
    <style type="text/css">
        .at4-whatsnextmobile {
            position: fixed;
            bottom: 0;
            right: 0;
            left: 0;
            background: #fff;
            z-index: 9999998;
            height: 170px;
            font-size: 28px;
        }

            .at4-whatsnextmobile .col-2 {
                height: 100%;
                font-size: 1em;
            }

                .at4-whatsnextmobile .col-2:first-child {
                    max-width: 200px;
                    display: inline-block;
                    float: left;
                }

                .at4-whatsnextmobile .col-2:last-child {
                    position: absolute;
                    left: 200px;
                    right: 50px;
                    top: 0;
                    bottom: 0;
                    display: inline-block;
                }

            .at4-whatsnextmobile .at-whatsnext-content-inner {
                font-size: 1em;
            }

            .at4-whatsnextmobile .at-whatsnext-content-img img {
                height: 100%;
                width: 100%;
            }

            .at4-whatsnextmobile .at-close-control {
                font-size: 1em;
                position: absolute;
                top: 0;
                right: 0;
                width: 50px;
                height: 50px;
            }

                .at4-whatsnextmobile .at-close-control button {
                    width: 100%;
                    height: 100%;
                    font-size: 1em;
                    font-weight: 400;
                    text-decoration: none;
                    opacity: .5;
                    padding: 0;
                    cursor: pointer;
                    background: 0 0;
                    border: 0;
                    -webkit-appearance: none;
                }

            .at4-whatsnextmobile .at-h3, .at4-whatsnextmobile .at-h6 {
                font-size: 1em;
                margin: 0;
                color: #a1a1a1;
                margin-left: 2.5%;
                margin-top: 25px;
            }

            .at4-whatsnextmobile .at-h3 {
                font-size: 1em;
                line-height: 1em;
                font-weight: 500;
                height: 50%;
            }

                .at4-whatsnextmobile .at-h3 a {
                    font-size: 1em;
                    text-decoration: none;
                }

            .at4-whatsnextmobile .at-h6 {
                font-size: .8em;
                line-height: .8em;
                font-weight: 500;
            }

            .at4-whatsnextmobile .footer {
                position: absolute;
                bottom: 2px;
                left: 200px;
                right: 0;
                padding-left: 2.5%;
                font-size: 1em;
                line-height: .6em;
            }

                .at4-whatsnextmobile .footer small {
                    font-size: .6em;
                    color: #a1a1a1;
                }

                    .at4-whatsnextmobile .footer small:first-child {
                        margin-right: 5%;
                        float: left;
                    }

                    .at4-whatsnextmobile .footer small:last-child {
                        margin-right: 2.5%;
                        float: right;
                    }

            .at4-whatsnextmobile .at-whatsnext-content {
                height: 100%;
            }

            .at4-whatsnextmobile.ats-dark {
                background: #262b30;
                color: #fff;
            }

            .at4-whatsnextmobile .at-close-control button {
                color: #bfbfbf;
            }

            .at4-whatsnextmobile.ats-dark a:link, .at4-whatsnextmobile.ats-dark a:visited {
                color: #fff;
            }

            .at4-whatsnextmobile.ats-gray {
                background: #f2f2f2;
                color: #262b30;
            }

            .at4-whatsnextmobile.ats-light {
                background: #fff;
                color: #262b30;
            }

                .at4-whatsnextmobile.ats-dark .footer a:link, .at4-whatsnextmobile.ats-dark .footer a:visited, .at4-whatsnextmobile.ats-gray .footer a:link, .at4-whatsnextmobile.ats-gray .footer a:visited, .at4-whatsnextmobile.ats-light .footer a:link, .at4-whatsnextmobile.ats-light .footer a:visited {
                    color: #a1a1a1;
                }

                .at4-whatsnextmobile.ats-gray a:link, .at4-whatsnextmobile.ats-gray a:visited, .at4-whatsnextmobile.ats-light a:link, .at4-whatsnextmobile.ats-light a:visited {
                    color: #262b30;
                }

        @media only screen and (min-device-width:320px) and (max-device-width:480px) {
            .at4-whatsnextmobile {
                height: 85px;
                font-size: 14px;
            }

                .at4-whatsnextmobile .col-2:first-child {
                    width: 75pt;
                }

                .at4-whatsnextmobile .col-2:last-child {
                    right: 25px;
                    left: 75pt;
                }

                .at4-whatsnextmobile .footer {
                    left: 75pt;
                }

                .at4-whatsnextmobile .at-close-control {
                    width: 25px;
                    height: 25px;
                }

                .at4-whatsnextmobile .at-h3, .at4-whatsnextmobile .at-h6 {
                    margin-top: 12.5px;
                }
        }
    </style>
    <style type="text/css">
        .at-custom-mobile-bar {
            left: 0;
            right: 0;
            width: 100%;
            height: 4pc;
            position: fixed;
            text-align: center;
            z-index: 100020;
            background: #fff;
            overflow: hidden;
            box-shadow: 0 0 10px 0 rgba(0,0,0,.2);
            font: initial;
            line-height: normal;
            top: auto;
            bottom: 0;
        }

            .at-custom-mobile-bar.at-custom-mobile-bar-zindex-hide {
                z-index: -1 !important;
            }

            .at-custom-mobile-bar.atss-top {
                top: 0;
                bottom: auto;
            }

            .at-custom-mobile-bar.atss-bottom {
                top: auto;
                bottom: 0;
            }

            .at-custom-mobile-bar .at-custom-mobile-bar-btns {
                display: inline-block;
                text-align: center;
            }

            .at-custom-mobile-bar .at-custom-mobile-bar-counter, .at-custom-mobile-bar .at-share-btn {
                margin-top: 8px;
            }

            .at-custom-mobile-bar .at-share-btn {
                display: inline-block;
                text-decoration: none;
                -webkit-transition: none;
                transition: none;
                box-sizing: content-box;
            }

            .at-custom-mobile-bar .at-custom-mobile-bar-counter {
                font-family: Helvetica neue,arial;
                vertical-align: top;
                margin-left: 4px;
                margin-right: 4px;
                display: inline-block;
            }

            .at-custom-mobile-bar .at-custom-mobile-bar-count {
                font-size: 26px;
                line-height: 1.25em;
                color: #222;
            }

            .at-custom-mobile-bar .at-custom-mobile-bar-text {
                font-size: 9pt;
                line-height: 1.25em;
                color: #888;
                letter-spacing: 1px;
            }

            .at-custom-mobile-bar .at-icon-wrapper {
                text-align: center;
                height: 50px;
                width: 50px;
                margin: 0 4px;
            }

            .at-custom-mobile-bar .at-icon {
                vertical-align: top;
                margin: 9px;
                width: 2pc;
                height: 2pc;
            }
    </style>
    <style type="text/css">
        .at-custom-sidebar {
            top: 20%;
            width: 58px;
            position: fixed;
            text-align: center;
            z-index: 100020;
            background: #fff;
            overflow: hidden;
            box-shadow: 0 0 10px 0 rgba(0,0,0,.2);
            font: initial;
            line-height: normal;
            top: auto;
            bottom: 0;
        }

            .at-custom-sidebar.at-custom-sidebar-zindex-hide {
                z-index: -1 !important;
            }

            .at-custom-sidebar.atss-left {
                left: 0;
                right: auto;
                float: left;
                border-radius: 0 4px 4px 0;
            }

            .at-custom-sidebar.atss-right {
                left: auto;
                right: 0;
                float: right;
                border-radius: 4px 0 0 4px;
            }

            .at-custom-sidebar .at-custom-sidebar-btns {
                display: inline-block;
                text-align: center;
                padding-top: 4px;
            }

            .at-custom-sidebar .at-custom-sidebar-counter {
                margin-bottom: 8px;
            }

            .at-custom-sidebar .at-share-btn {
                display: inline-block;
                text-decoration: none;
                -webkit-transition: none;
                transition: none;
                box-sizing: content-box;
            }

            .at-custom-sidebar .at-custom-sidebar-counter {
                font-family: Helvetica neue,arial;
                vertical-align: top;
                margin-left: 4px;
                margin-right: 4px;
                display: inline-block;
            }

            .at-custom-sidebar .at-custom-sidebar-count {
                font-size: 21px;
                line-height: 1.25em;
                color: #222;
            }

            .at-custom-sidebar .at-custom-sidebar-text {
                font-size: 10px;
                line-height: 1.25em;
                color: #888;
                letter-spacing: 1px;
            }

            .at-custom-sidebar .at-icon-wrapper {
                text-align: center;
                margin: 0 4px;
            }

            .at-custom-sidebar .at-icon {
                vertical-align: top;
                margin: 9px;
                width: 2pc;
                height: 2pc;
            }
    </style>
    <style type="text/css">
        .at-image-sharing-mobile-icon {
            position: absolute;
            background: #000 url(//s7.addthis.com/static/44a36d35bafef33aa9455b7d3039a771.png) no-repeat top center;
            background-color: rgba(0,0,0,.9);
            background-image: url(//s7.addthis.com/static/10db525181ee0bbe1a515001be1c7818.svg),none;
            border-radius: 3px;
            width: 50px;
            height: 40px;
            top: -9999px;
            left: -9999px;
        }

        .at-image-sharing-tool {
            display: block;
            position: absolute;
            text-align: center;
            z-index: 9001;
            background: none;
            overflow: hidden;
            top: -9999px;
            left: -9999px;
            font: initial;
            line-height: 0;
        }

            .at-image-sharing-tool.addthis-animated {
                -webkit-animation-duration: .15s;
                animation-duration: .15s;
            }

            .at-image-sharing-tool.at-orientation-vertical .at-share-btn {
                display: block;
            }

            .at-image-sharing-tool.at-orientation-horizontal .at-share-btn {
                display: inline-block;
            }

            .at-image-sharing-tool.at-image-sharing-tool-size-big .at-icon {
                width: 43px;
                height: 43px;
            }

            .at-image-sharing-tool.at-image-sharing-tool-size-mobile .at-share-btn {
                margin: 0 !important;
            }

            .at-image-sharing-tool.at-image-sharing-tool-size-mobile .at-icon-wrapper {
                height: 60px;
                width: 100%;
                border-radius: 0 !important;
            }

            .at-image-sharing-tool.at-image-sharing-tool-size-mobile .at-icon {
                max-width: 100%;
                height: 54px !important;
                width: 54px !important;
            }

            .at-image-sharing-tool .at-custom-shape.at-image-sharing-tool-btns {
                margin-right: 8px;
                margin-bottom: 8px;
            }

            .at-image-sharing-tool .at-custom-shape .at-share-btn {
                margin-top: 8px;
                margin-left: 8px;
            }

            .at-image-sharing-tool .at-share-btn {
                line-height: 0;
                text-decoration: none;
                -webkit-transition: none;
                transition: none;
                box-sizing: content-box;
            }

            .at-image-sharing-tool .at-icon-wrapper {
                text-align: center;
                height: 100%;
                width: 100%;
            }

            .at-image-sharing-tool .at-icon {
                vertical-align: top;
                width: 2pc;
                height: 2pc;
                margin: 3px;
            }
    </style>
    <style type="text/css">
        .at-expanding-share-button {
            box-sizing: border-box;
            position: fixed;
            z-index: 9999;
        }

            .at-expanding-share-button[data-position=bottom-right] {
                bottom: 10px;
                right: 10px;
            }

                .at-expanding-share-button[data-position=bottom-right] .at-expanding-share-button-toggle-bg, .at-expanding-share-button[data-position=bottom-right] .at-expanding-share-button-toggle-btn[data-name]:after, .at-expanding-share-button[data-position=bottom-right] .at-icon-wrapper, .at-expanding-share-button[data-position=bottom-right] [data-name]:after {
                    float: right;
                }

                .at-expanding-share-button[data-position=bottom-right] [data-name]:after {
                    margin-right: 10px;
                }

                .at-expanding-share-button[data-position=bottom-right] .at-expanding-share-button-toggle-btn[data-name]:after {
                    margin-right: 5px;
                }

                .at-expanding-share-button[data-position=bottom-right] .at-icon-wrapper {
                    margin-right: -3px;
                }

            .at-expanding-share-button[data-position=bottom-left] {
                bottom: 10px;
                left: 10px;
            }

                .at-expanding-share-button[data-position=bottom-left] .at-expanding-share-button-toggle-bg, .at-expanding-share-button[data-position=bottom-left] .at-expanding-share-button-toggle-btn[data-name]:after, .at-expanding-share-button[data-position=bottom-left] .at-icon-wrapper, .at-expanding-share-button[data-position=bottom-left] [data-name]:after {
                    float: left;
                }

                .at-expanding-share-button[data-position=bottom-left] [data-name]:after {
                    margin-left: 10px;
                }

                .at-expanding-share-button[data-position=bottom-left] .at-expanding-share-button-toggle-btn[data-name]:after {
                    margin-left: 5px;
                }

            .at-expanding-share-button *, .at-expanding-share-button :after, .at-expanding-share-button :before {
                box-sizing: border-box;
            }

            .at-expanding-share-button .at-expanding-share-button-services-list {
                display: none;
                list-style: none;
                margin: 0 5px;
                overflow: visible;
                padding: 0;
            }

                .at-expanding-share-button .at-expanding-share-button-services-list > li {
                    display: block;
                    height: 45px;
                    position: relative;
                    overflow: visible;
                }

            .at-expanding-share-button .at-expanding-share-button-toggle-btn, .at-expanding-share-button .at-share-btn {
                -webkit-transition: .1s;
                transition: .1s;
                text-decoration: none;
            }

            .at-expanding-share-button .at-share-btn {
                display: block;
                height: 40px;
                padding: 0 3px 0 0;
            }

            .at-expanding-share-button .at-expanding-share-button-toggle-btn {
                position: relative;
                overflow: auto;
            }

                .at-expanding-share-button .at-expanding-share-button-toggle-btn.at-expanding-share-button-hidden[data-name]:after {
                    display: none;
                }

            .at-expanding-share-button .at-expanding-share-button-toggle-bg {
                box-shadow: 0 2px 4px 0 rgba(0,0,0,.3);
                border-radius: 50%;
                position: relative;
            }

                .at-expanding-share-button .at-expanding-share-button-toggle-bg > span {
                    background-image: url("data:image/svg+xml,%3Csvg%20width%3D%2232px%22%20height%3D%2232px%22%20viewBox%3D%220%200%2032%2032%22%20version%3D%221.1%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3Eshare%3C%2Ftitle%3E%3Cg%20stroke%3D%22none%22%20stroke-width%3D%221%22%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cg%20fill%3D%22%23FFFFFF%22%3E%3Cpath%20d%3D%22M26%2C13.4285714%20C26%2C13.6220248%2025.9293162%2C13.7894338%2025.7879464%2C13.9308036%20L20.0736607%2C19.6450893%20C19.932291%2C19.786459%2019.7648819%2C19.8571429%2019.5714286%2C19.8571429%20C19.3779752%2C19.8571429%2019.2105662%2C19.786459%2019.0691964%2C19.6450893%20C18.9278267%2C19.5037195%2018.8571429%2C19.3363105%2018.8571429%2C19.1428571%20L18.8571429%2C16.2857143%20L16.3571429%2C16.2857143%20C15.6279725%2C16.2857143%2014.9750773%2C16.3080355%2014.3984375%2C16.3526786%20C13.8217977%2C16.3973217%2013.2488868%2C16.477306%2012.6796875%2C16.5926339%20C12.1104882%2C16.7079619%2011.6157015%2C16.8660704%2011.1953125%2C17.0669643%20C10.7749235%2C17.2678581%2010.3824423%2C17.5264121%2010.0178571%2C17.8426339%20C9.65327199%2C18.1588557%209.35565592%2C18.534596%209.125%2C18.9698661%20C8.89434408%2C19.4051361%208.71391434%2C19.9203839%208.58370536%2C20.515625%20C8.45349637%2C21.1108661%208.38839286%2C21.7842224%208.38839286%2C22.5357143%20C8.38839286%2C22.9449425%208.40699386%2C23.4025272%208.44419643%2C23.9084821%20C8.44419643%2C23.9531252%208.45349693%2C24.0405499%208.47209821%2C24.1707589%20C8.4906995%2C24.3009679%208.5%2C24.3995532%208.5%2C24.4665179%20C8.5%2C24.5781256%208.46837829%2C24.6711306%208.40513393%2C24.7455357%20C8.34188956%2C24.8199408%208.25446484%2C24.8571429%208.14285714%2C24.8571429%20C8.02380893%2C24.8571429%207.9196433%2C24.7938994%207.83035714%2C24.6674107%20C7.77827355%2C24.6004461%207.72991094%2C24.5186017%207.68526786%2C24.421875%20C7.64062478%2C24.3251483%207.59040206%2C24.2135423%207.53459821%2C24.0870536%20C7.47879436%2C23.9605648%207.43973225%2C23.87128%207.41741071%2C23.8191964%20C6.47246551%2C21.6986501%206%2C20.0208395%206%2C18.7857143%20C6%2C17.3050521%206.19717065%2C16.0662252%206.59151786%2C15.0691964%20C7.79688103%2C12.0706695%2011.0520568%2C10.5714286%2016.3571429%2C10.5714286%20L18.8571429%2C10.5714286%20L18.8571429%2C7.71428571%20C18.8571429%2C7.52083237%2018.9278267%2C7.35342333%2019.0691964%2C7.21205357%20C19.2105662%2C7.07068382%2019.3779752%2C7%2019.5714286%2C7%20C19.7648819%2C7%2019.932291%2C7.07068382%2020.0736607%2C7.21205357%20L25.7879464%2C12.9263393%20C25.9293162%2C13.067709%2026%2C13.2351181%2026%2C13.4285714%20L26%2C13.4285714%20Z%22%3E%3C%2Fpath%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E");
                    background-position: center center;
                    background-repeat: no-repeat;
                    -webkit-transition: transform .4s ease;
                    transition: transform .4s ease;
                    border-radius: 50%;
                    display: block;
                }

            .at-expanding-share-button .at-icon-wrapper {
                box-shadow: 0 2px 4px 0 rgba(0,0,0,.3);
                border-radius: 50%;
                display: inline-block;
                height: 40px;
                line-height: 40px;
                text-align: center;
                width: 40px;
            }

            .at-expanding-share-button .at-icon {
                display: inline-block;
                height: 34px;
                margin: 3px 0;
                vertical-align: top;
                width: 34px;
            }

            .at-expanding-share-button [data-name]:after {
                box-shadow: 0 2px 4px 0 rgba(0,0,0,.3);
                -webkit-transform: translate(0, -50%);
                transform: translate(0, -50%);
                -webkit-transition: .4s;
                transition: .4s;
                background-color: #fff;
                border-radius: 3px;
                color: #666;
                content: attr(data-name);
                font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
                font-size: 9pt;
                line-height: 9pt;
                font-weight: 500;
                opacity: 0;
                padding: 3px 5px;
                position: relative;
                top: 20px;
                white-space: nowrap;
            }

            .at-expanding-share-button.at-expanding-share-button-show-icons .at-expanding-share-button-services-list {
                display: block;
            }

            .at-expanding-share-button.at-expanding-share-button-animate-in .at-expanding-share-button-toggle-bg > span {
                -webkit-transform: rotate(270deg);
                transform: rotate(270deg);
                background-image: url("data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20viewBox%3D%220%200%2032%2032%22%3E%3Cg%3E%3Cpath%20d%3D%22M18%2014V8h-4v6H8v4h6v6h4v-6h6v-4h-6z%22%20fill-rule%3D%22evenodd%22%20fill%3D%22white%22%3E%3C%2Fpath%3E%3C%2Fg%3E%3C%2Fsvg%3E");
                background-position: center center;
                background-repeat: no-repeat;
            }

            .at-expanding-share-button.at-expanding-share-button-animate-in [data-name]:after {
                opacity: 1;
            }

            .at-expanding-share-button.at-hide-label [data-name]:after {
                display: none;
            }

            .at-expanding-share-button.at-expanding-share-button-desktop .at-expanding-share-button-toggle {
                height: 50px;
            }

            .at-expanding-share-button.at-expanding-share-button-desktop .at-icon-wrapper:hover {
                box-shadow: 0 2px 5px 0 rgba(0,0,0,.5);
            }

            .at-expanding-share-button.at-expanding-share-button-desktop .at-expanding-share-button-toggle-bg {
                height: 50px;
                line-height: 50px;
                width: 50px;
            }

                .at-expanding-share-button.at-expanding-share-button-desktop .at-expanding-share-button-toggle-bg > span {
                    height: 50px;
                    width: 50px;
                }

                .at-expanding-share-button.at-expanding-share-button-desktop .at-expanding-share-button-toggle-bg:after {
                    box-shadow: 0 2px 5px 0 rgba(0,0,0,.2);
                    -webkit-transition: opacity .2s ease;
                    transition: opacity .2s ease;
                    border-radius: 50%;
                    content: '';
                    height: 100%;
                    opacity: 0;
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                }

                .at-expanding-share-button.at-expanding-share-button-desktop .at-expanding-share-button-toggle-bg:hover:after {
                    opacity: 1;
                }

            .at-expanding-share-button.at-expanding-share-button-desktop .at-expanding-share-button-toggle-btn[data-name]:after {
                top: 25px;
            }

            .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie9 {
                background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGNiYAAAAAkAAxkR2eQAAAAASUVORK5CYII=");
            }

            .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie8 .at-expanding-share-button-toggle-bg > span {
                background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAEDWlDQ1BJQ0MgUHJvZmlsZQAAOI2NVV1oHFUUPrtzZyMkzlNsNIV0qD8NJQ2TVjShtLp/3d02bpZJNtoi6GT27s6Yyc44M7v9oU9FUHwx6psUxL+3gCAo9Q/bPrQvlQol2tQgKD60+INQ6Ium65k7M5lpurHeZe58853vnnvuuWfvBei5qliWkRQBFpquLRcy4nOHj4g9K5CEh6AXBqFXUR0rXalMAjZPC3e1W99Dwntf2dXd/p+tt0YdFSBxH2Kz5qgLiI8B8KdVy3YBevqRHz/qWh72Yui3MUDEL3q44WPXw3M+fo1pZuQs4tOIBVVTaoiXEI/MxfhGDPsxsNZfoE1q66ro5aJim3XdoLFw72H+n23BaIXzbcOnz5mfPoTvYVz7KzUl5+FRxEuqkp9G/Ajia219thzg25abkRE/BpDc3pqvphHvRFys2weqvp+krbWKIX7nhDbzLOItiM8358pTwdirqpPFnMF2xLc1WvLyOwTAibpbmvHHcvttU57y5+XqNZrLe3lE/Pq8eUj2fXKfOe3pfOjzhJYtB/yll5SDFcSDiH+hRkH25+L+sdxKEAMZahrlSX8ukqMOWy/jXW2m6M9LDBc31B9LFuv6gVKg/0Szi3KAr1kGq1GMjU/aLbnq6/lRxc4XfJ98hTargX++DbMJBSiYMIe9Ck1YAxFkKEAG3xbYaKmDDgYyFK0UGYpfoWYXG+fAPPI6tJnNwb7ClP7IyF+D+bjOtCpkhz6CFrIa/I6sFtNl8auFXGMTP34sNwI/JhkgEtmDz14ySfaRcTIBInmKPE32kxyyE2Tv+thKbEVePDfW/byMM1Kmm0XdObS7oGD/MypMXFPXrCwOtoYjyyn7BV29/MZfsVzpLDdRtuIZnbpXzvlf+ev8MvYr/Gqk4H/kV/G3csdazLuyTMPsbFhzd1UabQbjFvDRmcWJxR3zcfHkVw9GfpbJmeev9F08WW8uDkaslwX6avlWGU6NRKz0g/SHtCy9J30o/ca9zX3Kfc19zn3BXQKRO8ud477hLnAfc1/G9mrzGlrfexZ5GLdn6ZZrrEohI2wVHhZywjbhUWEy8icMCGNCUdiBlq3r+xafL549HQ5jH+an+1y+LlYBifuxAvRN/lVVVOlwlCkdVm9NOL5BE4wkQ2SMlDZU97hX86EilU/lUmkQUztTE6mx1EEPh7OmdqBtAvv8HdWpbrJS6tJj3n0CWdM6busNzRV3S9KTYhqvNiqWmuroiKgYhshMjmhTh9ptWhsF7970j/SbMrsPE1suR5z7DMC+P/Hs+y7ijrQAlhyAgccjbhjPygfeBTjzhNqy28EdkUh8C+DU9+z2v/oyeH791OncxHOs5y2AtTc7nb/f73TWPkD/qwBnjX8BoJ98VVBg/m8AAAFdSURBVFgJ7ZSxSgNBEIbvopIUYqVNsAoWeY1o7SuYwsZWfARB3yGIYJk3SBqx8g2EpFKwCRwiaBQU9fxGb2HJ7Z7OBZSEHfhym9mZfyZzu4miYGECYQLzMoE0TVchgZ1/+U0U3gCxd2j/eRMUNQ2omljUdor6GjlNWIdlqIGY+I1VWJwSG8VxfGacpZ8I1eEQhqCx6V8H1fZgrKk6EStNlDuYJO5PiJX9mqjHT6UGvJataOU9sd70NSCHxWe7bCz5Nn/pfyZum4N47osvugVbjqQ7fH24ght4hDcQq8PJ1+r748fiVmx+ydhG1hjlIB2BuXK5BPbs/4HCseeSXQ4EX8DYgSvG9hFoGpi+uAgjeJ9Vv+W5YBdzrYlZgUtoufbVPoQuQKyjTlYkFN2CXqYzUOipQ4sa6KL2AWO1qiLB2wB39xoduXJVhZ461NtApnTM80GtGhLCBMIEZmkCn0PBzK0nle+FAAAAAElFTkSuQmCC");
                background-position: center center;
                background-repeat: no-repeat;
            }

            .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie8.at-expanding-share-button-animate-in .at-expanding-share-button-toggle-bg > span {
                display: block;
                background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAFxJREFUWAntk0EKACAIBLX//7k6RiBbQXhwPFVYyOxkRkEAAtUJ+CuAPmu967PW/em6nTb+6mMACEhzd9tvZVS/gwjSCUgHosx3N1TW0TvpBBgAApGcnEMAAnUIDIT5DB4VEpurAAAAAElFTkSuQmCC");
                background-position: center center;
                background-repeat: no-repeat;
            }

            .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie8 .at-expanding-share-button-toggle {
                height: 52px;
            }

            .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie8 .at-expanding-share-button-toggle-bg, .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie8 .at-icon-wrapper {
                overflow: visible;
                -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Color='#000000',Direction=180,Strength=2)";
            }

            .at-expanding-share-button.at-expanding-share-button-desktop.addthis-smartlayers-ie8.at-expanding-share-button-animate-in [data-name]:after {
                background-color: #ddd;
                border: 1px solid #aaa;
                margin-top: -10px;
            }

            .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-services-list {
                margin: 0;
            }

            .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-toggle-btn, .at-expanding-share-button.at-expanding-share-button-mobile .at-share-btn {
                outline: 0;
            }

            .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-toggle {
                height: 40px;
                -webkit-tap-highlight-color: transparent;
            }

            .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-toggle-bg, .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-toggle-bg span {
                height: 40px;
                line-height: 40px;
                width: 40px;
            }

            .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-click-flash {
                -webkit-transform: scale(0);
                transform: scale(0);
                -webkit-transition: transform ease,opacity ease-in;
                transition: transform ease,opacity ease-in;
                background-color: hsla(0,0%,100%,.3);
                border-radius: 50%;
                height: 40px;
                opacity: 1;
                position: absolute;
                width: 40px;
                z-index: 10000;
            }

                .at-expanding-share-button.at-expanding-share-button-mobile .at-expanding-share-button-click-flash.at-expanding-share-button-click-flash-animate {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0;
                }

            .at-expanding-share-button.at-expanding-share-button-mobile + .at-expanding-share-button-mobile-overlay {
                -webkit-transition: opacity ease;
                transition: opacity ease;
                bottom: 0;
                background-color: hsla(0,0%,87%,.7);
                display: block;
                height: auto;
                left: 0;
                opacity: 0;
                position: fixed;
                right: 0;
                top: 0;
                width: auto;
                z-index: 9998;
            }

                .at-expanding-share-button.at-expanding-share-button-mobile + .at-expanding-share-button-mobile-overlay.at-expanding-share-button-hidden {
                    height: 0;
                    width: 0;
                    z-index: -10000;
                }

            .at-expanding-share-button.at-expanding-share-button-mobile.at-expanding-share-button-animate-in + .at-expanding-share-button-mobile-overlay {
                -webkit-transition: opacity ease;
                transition: opacity ease;
                opacity: 1;
            }
    </style>
    <style type="text/css">
        #addthissmartlayerscssready {
            color: #bada55 !important;
        }

        .addthis-smartlayers, div#at4-follow, div#at4-share, div#at4-thankyou, div#at4-whatsnext {
            padding: 0;
            margin: 0;
        }

        #at4-follow-label, #at4-share-label, #at4-whatsnext-label, .at4-recommended-label.hidden {
            padding: 0;
            border: none;
            background: none;
            position: absolute;
            top: 0;
            left: 0;
            height: 0;
            width: 0;
            overflow: hidden;
            text-indent: -9999em;
        }

        .addthis-smartlayers .at4-arrow:hover {
            cursor: pointer;
        }

        .addthis-smartlayers .at4-arrow:after, .addthis-smartlayers .at4-arrow:before {
            content: none;
        }

        a.at4-logo {
            background: url(data:image/gif;base64,R0lGODlhBwAHAJEAAP9uQf///wAAAAAAACH5BAkKAAIALAAAAAAHAAcAAAILFH6Ge8EBH2MKiQIAOw==) no-repeat left center;
            *background-image: url(//s7.addthis.com/static/5432e2206e5cb0b11874ad11e5a22186.png);
            _background-image: url(//s7.addthis.com/static/5432e2206e5cb0b11874ad11e5a22186.png);
        }

        .at4-minimal a.at4-logo {
            background: url(data:image/gif;base64,R0lGODlhBwAHAJEAAP9uQf///wAAAAAAACH5BAkKAAIALAAAAAAHAAcAAAILFH6Ge8EBH2MKiQIAOw==) no-repeat left center !important;
            *background-image: url(//s7.addthis.com/static/5432e2206e5cb0b11874ad11e5a22186.png) !important;
            _background-image: url(//s7.addthis.com/static/5432e2206e5cb0b11874ad11e5a22186.png) !important;
        }

        button.at4-closebutton {
            position: absolute;
            top: 0;
            right: 0;
            padding: 0;
            margin-right: 10px;
            cursor: pointer;
            background: transparent;
            border: 0;
            -webkit-appearance: none;
            font-size: 19px;
            line-height: 1;
            color: #000;
            text-shadow: 0 1px 0 #fff;
            opacity: .2;
            filter: alpha(opacity=20);
        }

            button.at4-closebutton:hover {
                color: #000;
                text-decoration: none;
                cursor: pointer;
                opacity: .5;
                filter: alpha(opacity=50);
            }

        div.at4-arrow {
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAAAoCAYAAABpYH0BAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAV1JREFUeNrsmesOgyAMhQfxwfrofTM3E10ME2i5Oeppwr9a5OMUCrh1XV+wcvNAAIAA+BiAzrmtUWln27dbjEcC3AdODfo0BdEPhmcO4nIDvDNELi2jggk4/k8dT7skfeKzWIEd4VUpMQKvNB7X+OZSmAZkATWC1xvipbpnLmOosbJZC08CkAeA4E6qFUEMwLAGnlSBPCE8lW8CYnZTcimH2HoT7kSFOx5HBmCnDhTIu1p5s98G+QZrxGPhZVMY1vgyAQaAAAiAAAgDQACcBOD+BvJtBWfRy7NpJK5tBe4FNzXokywV734wPHMQlxvgnSGyNoUP/2ACjv/7iSeYKO3YWKzAjvCqlBiBVxqPa3ynexNJwOsN8TJbzL6JNIYYXWpMv4lIIAZgWANPqkCeEJ7KNwExu8lpLlSpAVQarO77TyKdBsyRPuwV0h0gmoGnTWFYzVkYBoAA+I/2FmAAt6+b5XM9mFkAAAAASUVORK5CYII=);
            *background-image: url(//s7.addthis.com/static/a0b313560e2b4a469423cbaa5cf6f960.png);
            _background-image: url(//s7.addthis.com/static/3e227a805134427b6abb097e0718b1a9.gif);
            background-repeat: no-repeat;
            width: 20px;
            height: 20px;
            margin: 0;
            padding: 0;
            overflow: hidden;
            text-indent: -9999em;
            text-align: left;
            cursor: pointer;
        }

            #at4-recommendedpanel-outer-container .at4-arrow.at-right, div.at4-arrow.at-right {
                background-position: -20px 0;
            }

            #at4-recommendedpanel-outer-container .at4-arrow.at-left, div.at4-arrow.at-left {
                background-position: 0 0;
            }

            div.at4-arrow.at-down {
                background-position: -60px 0;
            }

            div.at4-arrow.at-up {
                background-position: -40px 0;
            }

        .ats-dark div.at4-arrow.at-right {
            background-position: -20px -20px;
        }

        .ats-dark div.at4-arrow.at-left {
            background-position: 0 -20px;
        }

        .ats-dark div.at4-arrow.at-down {
            background-position: -60px -20px;
        }

        .ats-dark div.at4-arrow.at-up {
            background-position: -40px -20;
        }

        .at4-opacity-hidden {
            opacity: 0 !important;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)" !important;
            filter: alpha(opacity=0) !important;
            -moz-opacity: 0 !important;
            -khtml-opacity: 0 !important;
        }

        .at4-opacity-visible {
            opacity: 1 !important;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)" !important;
            filter: alpha(opacity=100) !important;
            -moz-opacity: 1 !important;
            -khtml-opacity: 1 !important;
        }

        .at4-visually-hidden {
            position: absolute;
            clip: rect(1px,1px,1px,1px);
            padding: 0;
            border: 0;
            overflow: hidden;
        }

        .at4-hidden-off-screen, .at4-hidden-off-screen * {
            position: absolute !important;
            top: -9999px !important;
            left: -9999px !important;
        }

        .at4-show {
            display: block !important;
        }

        .at4-show, .at4-show-content {
            opacity: 1 !important;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)" !important;
            filter: alpha(opacity=100) !important;
            -moz-opacity: 1 !important;
            -khtml-opacity: 1 !important;
        }

        .at4-show-content {
            visibility: visible;
        }

        .at4-hide {
            display: none !important;
        }

        .at4-hide, .at4-hide-content {
            opacity: 0 !important;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)" !important;
            filter: alpha(opacity=0) !important;
            -moz-opacity: 0 !important;
            -khtml-opacity: 0 !important;
        }

        .at4-hide-content {
            visibility: hidden;
        }

        .at4-visible {
            display: block !important;
        }

        .at4-visible, .at-wordpress-hide {
            opacity: 0 !important;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)" !important;
            filter: alpha(opacity=0) !important;
            -moz-opacity: 0 !important;
            -khtml-opacity: 0 !important;
        }

        .at-wordpress-hide {
            display: none !important;
        }

        .addthis-animated {
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
            animation-timing-function: ease-out;
            -webkit-animation-duration: .3s;
            animation-duration: .3s;
        }

        .slideInDown.addthis-animated, .slideInLeft.addthis-animated, .slideInRight.addthis-animated, .slideInUp.addthis-animated, .slideOutDown.addthis-animated, .slideOutLeft.addthis-animated, .slideOutRight.addthis-animated, .slideOutUp.addthis-animated {
            -webkit-animation-duration: .4s;
            animation-duration: .4s;
        }

        @-webkit-keyframes fadeIn {
            0% {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .fadeIn {
            -webkit-animation-name: fadeIn;
            animation-name: fadeIn;
        }

        @-webkit-keyframes fadeInUp {
            0% {
                opacity: 0;
                -webkit-transform: translateY(20px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fadeInUp {
            -webkit-animation-name: fadeInUp;
            animation-name: fadeInUp;
        }

        @-webkit-keyframes fadeInDown {
            0% {
                opacity: 0;
                -webkit-transform: translateY(-20px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateY(0);
            }
        }

        @keyframes fadeInDown {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fadeInDown {
            -webkit-animation-name: fadeInDown;
            animation-name: fadeInDown;
        }

        @-webkit-keyframes fadeInLeft {
            0% {
                opacity: 0;
                -webkit-transform: translateX(-20px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateX(0);
            }
        }

        @keyframes fadeInLeft {
            0% {
                opacity: 0;
                transform: translateX(-20px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .fadeInLeft {
            -webkit-animation-name: fadeInLeft;
            animation-name: fadeInLeft;
        }

        @-webkit-keyframes fadeInRight {
            0% {
                opacity: 0;
                -webkit-transform: translateX(20px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateX(0);
            }
        }

        @keyframes fadeInRight {
            0% {
                opacity: 0;
                transform: translateX(20px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .fadeInRight {
            -webkit-animation-name: fadeInRight;
            animation-name: fadeInRight;
        }

        @-webkit-keyframes fadeOut {
            0% {
                opacity: 1;
            }

            to {
                opacity: 0;
            }
        }

        @keyframes fadeOut {
            0% {
                opacity: 1;
            }

            to {
                opacity: 0;
            }
        }

        .fadeOut {
            -webkit-animation-name: fadeOut;
            animation-name: fadeOut;
        }

        @-webkit-keyframes fadeOutUp {
            0% {
                opacity: 1;
                -webkit-transform: translateY(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateY(-20px);
            }
        }

        @keyframes fadeOutUp {
            0% {
                opacity: 1;
                transform: translateY(0);
            }

            to {
                opacity: 0;
                transform: translateY(-20px);
            }
        }

        .fadeOutUp {
            -webkit-animation-name: fadeOutUp;
            animation-name: fadeOutUp;
        }

        @-webkit-keyframes fadeOutDown {
            0% {
                opacity: 1;
                -webkit-transform: translateY(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateY(20px);
            }
        }

        @keyframes fadeOutDown {
            0% {
                opacity: 1;
                transform: translateY(0);
            }

            to {
                opacity: 0;
                transform: translateY(20px);
            }
        }

        .fadeOutDown {
            -webkit-animation-name: fadeOutDown;
            animation-name: fadeOutDown;
        }

        @-webkit-keyframes fadeOutLeft {
            0% {
                opacity: 1;
                -webkit-transform: translateX(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateX(-20px);
            }
        }

        @keyframes fadeOutLeft {
            0% {
                opacity: 1;
                transform: translateX(0);
            }

            to {
                opacity: 0;
                transform: translateX(-20px);
            }
        }

        .fadeOutLeft {
            -webkit-animation-name: fadeOutLeft;
            animation-name: fadeOutLeft;
        }

        @-webkit-keyframes fadeOutRight {
            0% {
                opacity: 1;
                -webkit-transform: translateX(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateX(20px);
            }
        }

        @keyframes fadeOutRight {
            0% {
                opacity: 1;
                transform: translateX(0);
            }

            to {
                opacity: 0;
                transform: translateX(20px);
            }
        }

        .fadeOutRight {
            -webkit-animation-name: fadeOutRight;
            animation-name: fadeOutRight;
        }

        @-webkit-keyframes slideInUp {
            0% {
                -webkit-transform: translateY(1500px);
            }

            0%,to {
                opacity: 1;
            }

            to {
                -webkit-transform: translateY(0);
            }
        }

        @keyframes slideInUp {
            0% {
                transform: translateY(1500px);
            }

            0%,to {
                opacity: 1;
            }

            to {
                transform: translateY(0);
            }
        }

        .slideInUp {
            -webkit-animation-name: slideInUp;
            animation-name: slideInUp;
        }

            .slideInUp.addthis-animated {
                -webkit-animation-duration: .4s;
                animation-duration: .4s;
            }

        @-webkit-keyframes slideInDown {
            0% {
                -webkit-transform: translateY(-850px);
            }

            0%,to {
                opacity: 1;
            }

            to {
                -webkit-transform: translateY(0);
            }
        }

        @keyframes slideInDown {
            0% {
                transform: translateY(-850px);
            }

            0%,to {
                opacity: 1;
            }

            to {
                transform: translateY(0);
            }
        }

        .slideInDown {
            -webkit-animation-name: slideInDown;
            animation-name: slideInDown;
        }

        @-webkit-keyframes slideOutUp {
            0% {
                -webkit-transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                -webkit-transform: translateY(-250px);
            }
        }

        @keyframes slideOutUp {
            0% {
                transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                transform: translateY(-250px);
            }
        }

        .slideOutUp {
            -webkit-animation-name: slideOutUp;
            animation-name: slideOutUp;
        }

        @-webkit-keyframes slideOutUpFast {
            0% {
                -webkit-transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                -webkit-transform: translateY(-1250px);
            }
        }

        @keyframes slideOutUpFast {
            0% {
                transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                transform: translateY(-1250px);
            }
        }

        #at4m-menu.slideOutUp {
            -webkit-animation-name: slideOutUpFast;
            animation-name: slideOutUpFast;
        }

        @-webkit-keyframes slideOutDown {
            0% {
                -webkit-transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                -webkit-transform: translateY(350px);
            }
        }

        @keyframes slideOutDown {
            0% {
                transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                transform: translateY(350px);
            }
        }

        .slideOutDown {
            -webkit-animation-name: slideOutDown;
            animation-name: slideOutDown;
        }

        @-webkit-keyframes slideOutDownFast {
            0% {
                -webkit-transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                -webkit-transform: translateY(1250px);
            }
        }

        @keyframes slideOutDownFast {
            0% {
                transform: translateY(0);
            }

            0%,to {
                opacity: 1;
            }

            to {
                transform: translateY(1250px);
            }
        }

        #at4m-menu.slideOutDown {
            -webkit-animation-name: slideOutDownFast;
            animation-name: slideOutDownFast;
        }

        @-webkit-keyframes slideInLeft {
            0% {
                opacity: 0;
                -webkit-transform: translateX(-850px);
                transform: translateX(-850px);
            }

            to {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
        }

        @keyframes slideInLeft {
            0% {
                opacity: 0;
                -webkit-transform: translateX(-850px);
                transform: translateX(-850px);
            }

            to {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
        }

        .slideInLeft {
            -webkit-animation-name: slideInLeft;
            animation-name: slideInLeft;
        }

        @-webkit-keyframes slideInRight {
            0% {
                opacity: 0;
                -webkit-transform: translateX(1250px);
                transform: translateX(1250px);
            }

            to {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
        }

        @keyframes slideInRight {
            0% {
                opacity: 0;
                -webkit-transform: translateX(1250px);
                transform: translateX(1250px);
            }

            to {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
        }

        .slideInRight {
            -webkit-animation-name: slideInRight;
            animation-name: slideInRight;
        }

        @-webkit-keyframes slideOutLeft {
            0% {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateX(-250px);
                transform: translateX(-250px);
            }
        }

        @keyframes slideOutLeft {
            0% {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateX(-350px);
                transform: translateX(-350px);
            }
        }

        .slideOutLeft {
            -webkit-animation-name: slideOutLeft;
            animation-name: slideOutLeft;
        }

        @-webkit-keyframes slideOutRight {
            0% {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateX(350px);
                transform: translateX(350px);
            }
        }

        @keyframes slideOutRight {
            0% {
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }

            to {
                opacity: 0;
                -webkit-transform: translateX(350px);
                transform: translateX(350px);
            }
        }

        .slideOutRight {
            -webkit-animation-name: slideOutRight;
            animation-name: slideOutRight;
        }

        .at4win {
            margin: 0 auto;
            background: #fff;
            border: 1px solid #ebeced;
            width: 25pc;
            box-shadow: 0 0 10px rgba(0,0,0,.3);
            border-radius: 8px;
            font-family: helvetica neue,helvetica,arial,sans-serif;
            text-align: left;
            z-index: 9999;
        }

            .at4win .at4win-header {
                position: relative;
                border-bottom: 1px solid #f2f2f2;
                background: #fff;
                height: 49px;
                -webkit-border-top-left-radius: 8px;
                -webkit-border-top-right-radius: 8px;
                -moz-border-radius-topleft: 8px;
                -moz-border-radius-topright: 8px;
                border-top-left-radius: 8px;
                border-top-right-radius: 8px;
                cursor: default;
            }

                .at4win .at4win-header .at-h3, .at4win .at4win-header h3 {
                    height: 49px;
                    line-height: 49px;
                    margin: 0 50px 0 0;
                    padding: 1px 0 0;
                    margin-left: 20px;
                    font-family: helvetica neue,helvetica,arial,sans-serif;
                    font-size: 1pc;
                    font-weight: 700;
                    text-shadow: 0 1px #fff;
                    color: #333;
                }

                    .at4win .at4win-header .at-h3 img, .at4win .at4win-header h3 img {
                        display: inline-block;
                        margin-right: 4px;
                    }

                .at4win .at4win-header .at4-close {
                    display: block;
                    position: absolute;
                    top: 0;
                    right: 0;
                    background: url("data:image/gif;base64,R0lGODlhFAAUAIABAAAAAP///yH5BAEAAAEALAAAAAAUABQAAAIzBIKpG+YMm5Enpodw1HlCfnkKOIqU1VXk55goVb2hi7Y0q95lfG70uurNaqLgTviyyUoFADs=") no-repeat center center;
                    *background: url(//s7.addthis.com/static/56b9cf44789a75f4822ae4677c0809f0.png) no-repeat center center;
                    _background: url(//s7.addthis.com/static/56b9cf44789a75f4822ae4677c0809f0.png) no-repeat center center;
                    background-repeat: no-repeat;
                    background-position: center center;
                    border-left: 1px solid #d2d2d1;
                    width: 49px;
                    height: 49px;
                    line-height: 49px;
                    overflow: hidden;
                    text-indent: -9999px;
                    text-shadow: none;
                    cursor: pointer;
                    opacity: .5;
                    border: 0;
                    -webkit-transition: opacity .15s ease-in;
                    transition: opacity .15s ease-in;
                }

                    .at4win .at4win-header .at4-close::-moz-focus-inner {
                        border: 0;
                        padding: 0;
                    }

                    .at4win .at4win-header .at4-close:hover {
                        opacity: 1;
                        background-color: #ebeced;
                        border-top-right-radius: 7px;
                    }

            .at4win .at4win-content {
                position: relative;
                background: #fff;
                _height: 440px;
                min-height: 220px;
            }

        #at4win-footer {
            position: relative;
            background: #fff;
            border-top: 1px solid #d2d2d1;
            -webkit-border-bottom-right-radius: 8px;
            -webkit-border-bottom-left-radius: 8px;
            -moz-border-radius-bottomright: 8px;
            -moz-border-radius-bottomleft: 8px;
            border-bottom-right-radius: 8px;
            border-bottom-left-radius: 8px;
            height: 11px;
            _height: 20px;
            line-height: 11px;
            padding: 5px 20px;
            font-size: 11px;
            color: #666;
            -ms-box-sizing: content-box;
            -o-box-sizing: content-box;
            box-sizing: content-box;
        }

            #at4win-footer a {
                margin-right: 10px;
                text-decoration: none;
                color: #666;
            }

                #at4win-footer a:hover {
                    text-decoration: none;
                    color: #000;
                }

                #at4win-footer a.at4-logo {
                    top: 5px;
                    padding-left: 10px;
                }

                #at4win-footer a.at4-privacy {
                    position: absolute;
                    top: 5px;
                    right: 10px;
                    padding-right: 14px;
                }

        .at4win.ats-dark {
            border-color: #555;
            box-shadow: none;
        }

            .at4win.ats-dark .at4win-header {
                background: #1b1b1b;
                -webkit-border-top-left-radius: 6px;
                -webkit-border-top-right-radius: 6px;
                -moz-border-radius-topleft: 6px;
                -moz-border-radius-topright: 6px;
                border-top-left-radius: 6px;
                border-top-right-radius: 6px;
            }

                .at4win.ats-dark .at4win-header .at4-close {
                    background: url("data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMTEvMTMvMTKswDp5AAAAd0lEQVQ4jb2VQRLAIAgDE///Z3qqY1FAhalHMCsCIkVEAIAkkVgvp2lDBgYAnAyHkWotLccNrEd4A7X2TqIdqLfnWBAdaF5rJdyJfjtPH5GT37CaGhoVq3nOm/XflUuLUto2pY1d+vRKh0Pp+MrAVtDe2JkvYNQ+jVSEEFmOkggAAAAASUVORK5CYII=") no-repeat center center;
                    *background: url(//s7.addthis.com/static/5092b14c9020eaa68c3de74da2219940.png) no-repeat center center;
                    _background: url(//s7.addthis.com/static/5092b14c9020eaa68c3de74da2219940.png) no-repeat center center;
                    background-image: url(//s7.addthis.com/static/fb08f6d50887bd0caacc86a62bcdcf68.svg),none;
                    border-color: #333;
                }

                    .at4win.ats-dark .at4win-header .at4-close:hover {
                        background-color: #000;
                    }

                .at4win.ats-dark .at4win-header .at-h3, .at4win.ats-dark .at4win-header h3 {
                    color: #fff;
                    text-shadow: 0 1px #000;
                }

        .at4win.ats-gray .at4win-header {
            background: #fff;
            border-color: #d2d2d1;
            -webkit-border-top-left-radius: 6px;
            -webkit-border-top-right-radius: 6px;
            -moz-border-radius-topleft: 6px;
            -moz-border-radius-topright: 6px;
            border-top-left-radius: 6px;
            border-top-right-radius: 6px;
        }

            .at4win.ats-gray .at4win-header a.at4-close {
                border-color: #d2d2d1;
            }

                .at4win.ats-gray .at4win-header a.at4-close:hover {
                    background-color: #ebeced;
                }

        .at4win.ats-gray #at4win-footer {
            border-color: #ebeced;
        }

        .at4win .clear {
            clear: both;
        }

        .at4win ::selection {
            background: #fe6d4c;
            color: #fff;
        }

        .at4win ::-moz-selection {
            background: #fe6d4c;
            color: #fff;
        }

        .at4-icon-fw {
            display: inline-block;
            *display: block;
            background-repeat: no-repeat;
            background-position: 0 0;
            margin: 0 5px 0 0;
            overflow: hidden;
            text-indent: -9999em;
            cursor: pointer;
            padding: 0;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
        }

        .at44-follow-container a.aticon {
            height: 2pc;
            margin: 0 5px 5px 0;
        }

        .at44-follow-container .at4-icon-fw {
            margin: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
              <% DataBase db = new DataBase(); Response.Write(db.SelectSetting("websitetitle").ToString());%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
    <uc1:productDetail runat="server" ID="productDetail" />
</asp:Content>

