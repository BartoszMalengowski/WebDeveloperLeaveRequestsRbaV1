<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:template match="/">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" href="/resources/demos/style.css" />
        <script src="https://code.jquery.com/jquery-3.6.0.js" />
        <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js" />
        <style>
            <!-- CSS for JOB STATUS AND TOOLTIP BEGIN -->
            .hoverTable tr:hover {
                background-color: #90CAF9;
                color: red;
            }
            tr:nth-child(even) {
                background-color: silver;
            }

            #ActionNewJob_CSS {
				background-color: #99FFCC;
				border-radius: 1px;
				border: 1px solid;
                border-color: #006633;
				color: #006633;
				font-weight: bold;
				font-size: 14px;
				font-family: Helvetica;
			}

			#StatusProjectOrdered_CSS {
				background-color: #B2DFDB;
                border-radius: 1px;
				border: 1px solid;
                border-color: #004D40;
				color: #004D40;
				font-weight: bold;
				font-size: 14px;
				font-family: Helvetica;
				cursor: help;
			}

            #HelpForForeignShipment_CSS {
            background-color: #000;
                border-radius: 5px;
				border: 1px solid;
                border-color: #000;
				color: #fff;
				font-weight: bold;
				font-size: 14px;
				font-family: Helvetica;
				cursor: help;
			}
			
			.tooltip {
  				position: relative;
  				display: inline-block;
			}

			.tooltip .tooltiptext {
  				visibility: hidden;
  				width: 375px;
  				background-color: black;
  				color: #fff;
  				text-align: center;
  				border-radius: 1px;
  				padding: 5px 0;
  				position: absolute;
  				z-index: 1;
  				top: -14px;
  				left: 105%;  
  				opacity: 0;
  				transition: opacity 1s;
			}

			.tooltip:hover .tooltiptext {
  				visibility: visible;
                opacity: 1;
			}
            <!-- CSS for JOB STATUS AND TOOLTIP END -->
            <!-- CSS for InfoSheet boxes BEGIN-->
            #LabelStyle_CSS {
                border: none;
                background-color: none;
                font-family: "Helvetica";
                font-size: 14px;
                font-weight: normal;
                color: #3F3F3F;
            }

            #DatePicker_CSS_DisabledInputTypeDate {
                max-width: 110px;
				background-color: #F3F3F3;
                background-image: linear-gradient(to top, #ddd, #eee 33%);
				border: 1px solid dimgray;
                border-radius: 1px;
                padding: 0px;
                font-family: "Helvetica";
                font-size: 14px;
                font-weight: bold;
                text-align: center;
                color: #3F3F3F;
                cursor: not-allowed;
			}

            #TextValue_CSS_DisabledInputTypeText {
				background-color: #F3F3F3;
                background-image: linear-gradient(to top, #ddd, #eee 33%);
				border: 1px solid dimgray;
                border-radius: 1px;
                padding: 1 25 1 25;
                font-family: "Helvetica";
                font-size: 14px;
                font-weight: bold;
                text-align: center;
                color: #3F3F3F;
                cursor: not-allowed;
            }

            #SpecTable_CSS_DisabledInputTypeText {
                font-family: "Helvetica";
                font-size: 14px;
                font-weight: bold;
                text-align: center;
                color: #3F3F3F;
                cursor: not-allowed;
            }
            <!-- CSS for InfoSheet boxes END-->
    
             select {
                width: auto;
                ppadding: 1 5 1 5;
                border: 1px solid dimgray;
                border-radius: 2px;
                color: #3F3F3F;
                font-size: 14px;
                font-weight: bold;
                font-family: "Helvetica";
                cursor: pointer;
                background-color: #fff;
            }

            input[type="text"]{
                appearance: none;
                -webkit-appearance: none;
                color: #3F3F3F;
                font-family: "Helvetica";
                font-size: 14px;
                font-weight: bold;
                padding: 1 5 1 5;
                border:1px solid dimgray;
                background: white;
                display: inline-block;
                border-radius: 2px;
                cursor: text;
                width: auto;
            }

            input[type=textspectable] {
                width: 100%;
                padding: 1 5 1 5;
                box-sizing: border-box;
                border: none;
                background: none;
                align: center;
                color: #3F3F3F;
                text-align: center;
                font-family: Helvetica;
                font-weight: bold;
                font-size: 12px;
                cursor: no-allowed;
            }

            input[type="date"] {
                appearance: none;
                -webkit-appearance: none;
                color: #3F3F3F;
                font-family: "Helvetica";
                font-size: 14px;
                font-weight: bold;
                padding: 1 5 1 5;
                text-align: center;
                border:1px solid dimgray;
                background: white;
                display: inline-block;
                border-radius: 2px;
                cursor: pointer;
            }
            ::-webkit-calendar-picker-indicator{
                cursor: pointer;
            }
        </style>
        <br></br>
        <!-- JOB & STATUS SECTION BEGIN -->
        <table style="padding-left:15;  margin-bottom:1; ">
            <th align="Right" nowrap="true" style="padding:2; ">
                <span id="LabelStyle_CSS">Zadanie:</span>
            </th>
            <td id="ActionNewJob_CSS" class="tooltip" style="padding:5 10 5 10 ;">
                NOWY PROJEKT
                </td>
            <th align="Right" nowrap="true" style="padding-left:10;">
                <span id="LabelStyle_CSS">Status:</span>
            </th>
            <td id="StatusProjectOrdered_CSS" class="tooltip" style="padding:5 10 5 10 ;">
					ZAMÓWIONO PROJEKT
                <span class="tooltiptext" style="padding: 10 10 10 10;">Zamówiono projekt w systemie
                    <br/>
                    <span style="color:red; font-weight:bold;">KODAK </span>InSite Prepress Portal.
                    <br/>
                    <br/>Wypełnij pola z zakładki
                    <span style="color:gray; font-weight:bold;">PROOF</span>, a następnie wyślij dane na nasz serwer klikając
                    <span style="color:gray; font-weight:bold;">Aktualizuj</span>.
                </span>
            </td>
        </table>
        <!-- JOB STATUS SECTION END -->
        <br/>
        <table border="0" bordercolor="#000000" width="100%" cellpadding="0" cellspacing="0" style="padding-left:10; padding-right:10;">
            <tbody>
                <!-- INFO SHEET TABS BEGIN -->
                <tr>
                    <td align="left">
                        <table border="0" bordercolor="#FF0000" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td id="reproTab" align="center" style="background: #b8b8b8; width: 100px; border-left: solid #3F3F3F 1px; border-bottom: solid #3F3F3F 1px;  border-top: solid #3F3F3F 1px; padding-top: 5px; padding-bottom: 5px">
                                        <a href="#" onClick="handleTabClick( 'repro' );" style="text-decoration:none;">
                                            <span id="reproLabel" style="color: #3F3F3F; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px; font-weight: bold">
                                                PROJEKT
                                            </span>
                                        </a>
                                    </td>
                                    <td id="proofTab" align="center" style="background: #E3E3E3; width: 100px; border-left: solid #3F3F3F 1px; border-top: solid #3F3F3F 1px; padding-top: 5px; padding-bottom: 5px">
                                        <a href="#" onClick="handleTabClick( 'proof' );" style="text-decoration:none;">
                                            <span id="proofLabel" style="color: #3F3F3F; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px; font-weight: bold">
                                                PROOF
                                            </span>
                                        </a>
                                    </td>
                                    <td id="platesTab" align="center" style="background: #b8b8b8; width: 100px; border-left: solid #3F3F3F 1px; border-bottom: solid #3F3F3F 1px; border-top: solid #3F3F3F 1px; border-right: solid #3F3F3F 1px; padding-top: 5px; padding-bottom: 5px">
                                        <a href="#" onClick="handleTabClick( 'plates' );" style="text-decoration:none;">
                                            <span id="platesLabel" style="color: #3F3F3F; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px; font-weight: bold">
                                                MATRYCE
                                            </span>
                                        </a>
                                    </td>
                                    <td width="600" style="border-bottom: solid dimgray 1px;">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <!-- INFO SHEET TABS END -->
                <tr>
                    <td>
                        <div style="position: relative; width: 100%; height: 450px; bgcolor:#D5E3F7">
                            <!-- PROJECT SECTION BEGIN -->
                            <div id="repro" style="position: absolute; visibility: visible; background:#E3E3E3; border-left:1px solid dimgray; height:1500; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span id="LabelStyle_CSS">Data zamówienia projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobOrderReproDate">
                                                        <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table frame="void" style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span id="LabelStyle_CSS">Oczekiwany termin otrzymania projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true">
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectFinalDate">
                                                        <input type="date" disabled="disabled" id="DatePicker_CSS_DisabledInputTypeDate">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span id="LabelStyle_CSS">
                                            Nazwa projektu:
                                        </span>
                                        </th>
                                        <th align="Left" nowrap="false">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAlias">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </th>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true">
                                            <span id="LabelStyle_CSS">Indeks projektu klienta:</span>
                                        </th>
                                        <td align="left" nowrap="true">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCustomerID">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Kod zadania:</span>
                                        </th>
                                        <td  align="Left" nowrap="true">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Kod projektu:</span>
                                        </th>
                                        <td align="Left" nowrap="true" style="padding:2;">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProjectCode">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="false" style="padding:2;">
                                            <span id="LabelStyle_CSS">Koordynator drukarni:</span>
                                        </th>
                                        <td align="Left" width="150" nowrap="false">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintCoordinator">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Szerokość użytku</span>
                                        </th>
                                        <td align="Left" style="padding:2 2 2 2 ;">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseWidth">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Wysokość użytku</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseHeight">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Szerokość podłoża</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRibbonWidth">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Rodzaj podłoża:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobFoilType">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Laminacja:</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobFoilLamination">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                            <span id="LabelStyle_CSS">Raport</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRepeatLength">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Wałek</span>
                                        </th>
                                        <td  align="Left" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCylinderSize">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Kolorystyka:</span>
                                        </th>
                                        <td  align="Left" width="40" nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobColoristic">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Biały:</span>
                                        </th>
                                        <td  align="Left" width="40" nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobWhite">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Lakier:</span>
                                        </th>
                                        <td  align="Left"  nowrap="false" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobVarnish">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Ilość użytków na szerokości:</span>
                                        </th>
                                        <td  align="Left" id="SpecTable_CSS_DisabledInputTypeText">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnWidth">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Ilość użytków na raporcie:</span>
                                        </th>
                                        <td  align="Left" id="SpecTable_CSS_DisabledInputTypeText">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnRaport">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Przesunięcie:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacement">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Kalibracja:</span>
                                        </th>
                                        <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCalibration">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Skrót na maszynie:</span>
                                        </th>
                                        <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashine">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS"></span>
                                        </th>
                                        <td  align="Left" nowrap="false">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashineValue">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table cellpadding="0" cellspacing="0" style="padding-left:16;  margin-bottom:1;">
                                    <td style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span id="LabelStyle_CSS">
                                        Uwagi do projektu:
                                    </span>
                                    </td>
                                    <tr>
                                        <td id="TextValue_CSS_DisabledInputTypeText" style="padding:5 5 5 5 ;">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobComments">
                                                    <p class="baseSans" style="margin-left:5; padding-bottom:0.3cm; text-align:left; height:80; width:450px;">
                                                        <xsl:apply-templates/>
                                                    </p>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <br/>
                            </div>
                            <!-- PROJECT SECTION END -->
                            <!-- PROOF SECTION BEGIN -->
                            <div id="proof" style="position: absolute; visibility: visible; background:#E3E3E3; border-left:1px solid dimgray; height:1500; width:890;">
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Data zamówienia proofa:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobProofOrderDate">
                                                    <input type="date" class="today">
                                                        <xsl:attribute name="value">
                                                            <xsl:apply-templates/>
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Oczekiwany termin dostawy proofa:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobProofFinalDate">
                                                    <input type="date">
                                                        <xsl:attribute name="value">
                                                            <xsl:apply-templates/>
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Potwierdzenie daty:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText" >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofFinalDateConfirmation">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Realny termin:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofAlternativeDate">
                                                        <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Czy proof ma być wysłany za granicę?</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofForeginShipment">
                                                        <select>
                                                            <option value="">
                                                                <xsl:if test=".=''">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                            </option>
                                                            <option value="Tak">
                                                                <xsl:if test=".='Tak'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                Tak
                                                            </option>
                                                            <option value="Nie">
                                                                <xsl:if test=".='Nie'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                Nie
                                                            </option>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <td id="HelpForForeignShipment_CSS" class="tooltip" style="padding:2 7 2 7 ;">
					                        ?
                                            <span class="tooltiptext" style="padding: 10 10 10 10;">Przypominamy, że wysystkie wysyłki zagraniczne są
                                                <span style="color:red;"> płatne </span> i zostaną wycenione przez odpowiednie osoby z naszego zespołu. Paczki zostaną wysłane dopiero po zaakceptowaniu kosztów wysyłki zagranicznej.
                                                <br/>
                                                <br/>Poinformuj swojego klienta o dodatkowych kosztach z tym związanych.
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding-left:15; ">
                                            <span id="LabelStyle_CSS">Zaakceptowana wersja PDF:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofAcceptedPDFVer">
                                                        <select>
                                                            <option value="">
                                                                <xsl:if test=".=''">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                            </option>
                                                            <option value="v1">
                                                                <xsl:if test=".='v1'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v1
                                                            </option>
                                                            <option value="v2">
                                                                <xsl:if test=".='v2'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v2
                                                            </option>
                                                            <option value="v3">
                                                                <xsl:if test=".='v3'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v3
                                                            </option>
                                                            <option value="v4">
                                                                <xsl:if test=".='v4'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v4
                                                            </option>
                                                            <option value="v5">
                                                                <xsl:if test=".='v5'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v5
                                                            </option>
                                                            <option value="v6">
                                                                <xsl:if test=".='v6'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v6
                                                            </option>
                                                            <option value="v7">
                                                                <xsl:if test=".='v7'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v7
                                                            </option>
                                                            <option value="v8">
                                                                <xsl:if test=".='v8'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v8
                                                            </option>
                                                            <option value="v9">
                                                                <xsl:if test=".='v9'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v9
                                                            </option>
                                                            <option value="v10">
                                                                <xsl:if test=".='v10'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                v10
                                                            </option>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Adres wysyłki proof #1:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddress">
                                                    <input type="text" size="50">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">Ilość:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span >
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddressQuantityOfProofs">
                                                    <select>
                                                        <option value="">
                                                            <xsl:if test=".=''">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                        </option>
                                                        <option value="1">
                                                            <xsl:if test=".='1'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                                1
                                                        </option>
                                                        <option value="2">
                                                            <xsl:if test=".='2'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                                2
                                                        </option>
                                                        <option value="3">
                                                            <xsl:if test=".='3'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>3
                                                        </option>
                                                        <option value="4">
                                                            <xsl:if test=".='4'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>4
                                                        </option>
                                                        <option value="5">
                                                            <xsl:if test=".='5'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>5
                                                        </option>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Kurier:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddressCourier">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">List przewozowy:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddressTrackingNumber">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Adres wysyłki proof #2:</span>
                                    </th>
                                    <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddress">
                                                    <input type="text" size="50">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">Ilość:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddressQuantityOfProofs">
                                                    <select>
                                                        <option value="">
                                                            <xsl:if test=".=''">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                        </option>
                                                        <option value="1">
                                                            <xsl:if test=".='1'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                                1
                                                        </option>
                                                        <option value="2">
                                                            <xsl:if test=".='2'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                                2
                                                        </option>
                                                        <option value="3">
                                                            <xsl:if test=".='3'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>3
                                                        </option>
                                                        <option value="4">
                                                            <xsl:if test=".='4'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>4
                                                        </option>
                                                        <option value="5">
                                                            <xsl:if test=".='5'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>5
                                                        </option>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Kurier:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddressCourier">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">List przewozowy:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddressTrackingNumber">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Adres wysyłki proof #3:</span>
                                    </th>
                                    <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddress">
                                                    <input type="text" size="50">
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="." />
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">Ilość:</span>
                                    </th>
                                    <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span>
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddressQuantityOfProofs">
                                                    <select>
                                                        <option value="">
                                                            <xsl:if test=".=''">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                        </option>
                                                        <option value="1">
                                                            <xsl:if test=".='1'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                                1
                                                        </option>
                                                        <option value="2">
                                                            <xsl:if test=".='2'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>
                                                                2
                                                        </option>
                                                        <option value="3">
                                                            <xsl:if test=".='3'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>3
                                                        </option>
                                                        <option value="4">
                                                            <xsl:if test=".='4'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>4
                                                        </option>
                                                        <option value="5">
                                                            <xsl:if test=".='5'">
                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                            </xsl:if>5
                                                        </option>
                                                    </select>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Kurier:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddressCourier">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">List przewozowy:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddressTrackingNumber">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS" >Zwrot proofa agencyjnego?</span>
                                        </th>
                                        <td  align="Left" width="40" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofReturn">
                                                        <select>
                                                            <option value="">
                                                                <xsl:if test=".=''">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                            </option>
                                                            <option value="Tak">
                                                                <xsl:if test=".='Tak'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                Tak
                                                            </option>
                                                            <option value="Nie">
                                                                <xsl:if test=".='Nie'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                Nie
                                                            </option>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table border="0px" width="100" style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span  width="100" style="font-size: 14px; color:red">Potwierdzam poprawność danych i zamawiam pierwszego proofa:</span>
                                        </th>
                                        <td align="Left" width="100" style="padding:2 5 2 5 ;" >
                                            <span >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofOrderConfirmation">
                                                        <select required="required">
                                                            <option value="">
                                                                <xsl:if test=".=''">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                            </option>
                                                            <option value="Nie">
                                                                <xsl:if test=".='Nie'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                                Nie
                                                            </option>
                                                            <option value="Tak">
                                                                <xsl:if test=".='Tak'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                                Tak
                                                            </option>
                                                            <option value="Pomijam ten krok i zamawiam matryce">
                                                                <xsl:if test=".='Pomijam ten krok i zamawiam matryce'">
                                                                    <xsl:attribute name="selected">1</xsl:attribute>
                                                                </xsl:if>
                                                                                Pomijam ten krok i zamawiam matryce
                                                            </option>
                                                        </select>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table cellpadding="0" cellspacing="0" style="padding-left:13;  margin-bottom:1;">
                                    <th style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span id="LabelStyle_CSS">
                                            Uwagi do proofa:</span>
                                    </th>
                                </table>
                                <table style="padding-left:10;">
                                    <td style="padding:5 5 5 5 ;">
                                        <xsl:for-each select="JobSpec">
                                            <xsl:for-each select="JobProofComments">
                                                <textarea style="padding:5 5 5 5 ; height:80; width:300; font-weight:bold; font-family:Helvetica; font-size: 14px" >
                                                    <xsl:value-of select="."/>
                                                </textarea>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </td>
                                </table>
                                <br/>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Data zamówienia proofa:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobProofOrderDate2">
                                                    <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                        <xsl:attribute name="value">
                                                            <xsl:apply-templates/>
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Oczekiwany termin dostawy proofa:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobProofFinalDate2">
                                                    <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                        <xsl:attribute name="value">
                                                            <xsl:apply-templates/>
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Potwierdzenie daty:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText" >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofFinalDateConfirmation2">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Realny termin:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofAlternativeDate2">
                                                        <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Czy proof ma być wysłany za granicę?</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText" >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofForeginShipment2">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Zaakceptowana wersja PDF:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText" >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofAcceptedPDFVer2">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Adres wysyłki proof #1:</span>
                                    </th>
                                    <td id="TextValue_CSS_DisabledInputTypeText">
                                        <xsl:for-each select="JobSpec">
                                            <xsl:for-each select="JobFirstAddress2">
                                                <p style="page-break-after:always; text-align:left; width:450px;">
                                                    <xsl:apply-templates/>
                                                </p>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">Ilość:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddressQuantityOfProofs2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Kurier:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddressCourier2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">List przewozowy:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobFirstAddressTrackingNumber2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Adres wysyłki proof #2:</span>
                                    </th>
                                    <td id="TextValue_CSS_DisabledInputTypeText">
                                        <xsl:for-each select="JobSpec">
                                            <xsl:for-each select="JobSecondAddress2">
                                                <p style="page-break-after:always; text-align:left; width:450px;">
                                                    <xsl:apply-templates/>
                                                </p>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">Ilość:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddressQuantityOfProofs2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Kurier:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddressCourier2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">List przewozowy:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobSecondAddressTrackingNumber2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Adres wysyłki proof #3:</span>
                                    </th>
                                    <td id="TextValue_CSS_DisabledInputTypeText">
                                        <xsl:for-each select="JobSpec">
                                            <xsl:for-each select="JobThirdAddress2">
                                                <p style="page-break-after:always; text-align:left; width:450px;">
                                                    <xsl:apply-templates/>
                                                </p>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">Ilość:</span>
                                    </th>
                                    <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddressQuantityOfProofs2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <th align="Left" nowrap="true" style="padding:2; ">
                                        <span id="LabelStyle_CSS">Kurier:</span>
                                    </th>
                                    <td align="Left" nowrap="false" style="padding:2 2 2 2 ;" >
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddressCourier2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                    <th align="Left" nowrap="true" style="padding:2; padding-left:10; ">
                                        <span id="LabelStyle_CSS">List przewozowy:</span>
                                    </th>
                                    <td  align="Left" style="padding:2 2 2 2 ;">
                                        <span id="TextValue_CSS_DisabledInputTypeText">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobThirdAddressTrackingNumber2">
                                                    <xsl:apply-templates/>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </span>
                                    </td>
                                </table>
                                <br/>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS" >Zwrot proofa agencyjnego?</span>
                                        </th>
                                        <td  align="Left" width="40" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobAgencyProofReturn2">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  cellpadding="0" cellspacing="0" style="padding-left:13;  margin-bottom:1;">
                                    <td style="padding-top:0.2cm; padding-bottom:0.2cm; ">
                                        <span id="LabelStyle_CSS">
                                            Uwagi do proofa:
                                        </span>
                                    </td>
                                    <tr>
                                        <td id="TextValue_CSS_DisabledInputTypeText" style="padding:5 5 5 5 ;">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobProofComments2">
                                                    <p style="margin-left:5; padding-bottom:0.3cm; page-break-after:always; text-align:left; height:80; width:350px;">
                                                        <xsl:apply-templates/>
                                                    </p>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                            </div>
                            <!-- PROOF SECTION END -->
                            <!-- PLATES SECTION BEGIN -->
                            <div id="plates" style="position: absolute; visibility: hidden; background:#E3E3E3; border-left:1px solid dimgray; height:1500; width:890;">
                                <br/>
                                <table style="padding-left:10; margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Data zamówienia matryc:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateOrderDate">
                                                        <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Data dostawy matryc:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobPlateDeliveryDate">
                                                    <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                        <xsl:attribute name="value">
                                                            <xsl:apply-templates/>
                                                        </xsl:attribute>
                                                    </input>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Potwierdzenie daty:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText" >
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateFinalDateConfirmation">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2;">
                                            <span id="LabelStyle_CSS">Realny termin:</span>
                                        </th>
                                        <td  align="Left" nowrap="true" style="padding:2 2 2 2 ;" >
                                            <span>
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPlateAlternativeDate">
                                                        <input disabled="disabled" type="date" id="DatePicker_CSS_DisabledInputTypeDate">
                                                            <xsl:attribute name="value">
                                                                <xsl:apply-templates/>
                                                            </xsl:attribute>
                                                        </input>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Rodzaj druku:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPrintType">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Szerokość użytku:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseWidth">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <span id="LabelStyle_CSS" style="padding-left:5;">mm</span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Wysokość użytku:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUseHeight">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <span id="LabelStyle_CSS" style="padding-left:5;">mm</span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Szerokość podłoża:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobRibbonWidth">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <span id="LabelStyle_CSS" style="padding-left:5;">mm</span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Ilość użytków na raporcie:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnRaport">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Ilość użytków na szerokości:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobUsesOnWidth">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Wałek:</span>
                                        </th>
                                        <td  align="Left" width="60" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCylinderSize">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <span id="LabelStyle_CSS" style="padding-left:5;">mm</span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Liniatura:</span>
                                        </th>
                                        <td  align="Left"  style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobScreenRuling">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <span id="LabelStyle_CSS" style="padding-left:5;">lpi</span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Liczba kolorów:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobQuantityOfColors">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Numer akceptacji PDF:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobPDFAcceptedVer">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Przesunięcie:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobDisplacement">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Kalibracja:</span>
                                        </th>
                                        <td  align="Left" width="600" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobCalibration">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Skrót na maszynie:</span>
                                        </th>
                                        <td  align="Left" nowrap="false" style="padding:2 2 2 2 ;">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashine">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS"></span>
                                        </th>
                                        <td  align="Left" nowrap="false">
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobShortcutOnMashineValue">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                            <th align="Left" nowrap="true" id="SpecTable_CSS_DisabledInputTypeText">
                                                <span id="LabelStyle_CSS">mm</span>
                                            </th>
                                        </td>
                                    </tr>
                                </table>
                                <hr color="#3F3F3F" size="1px"></hr>
                                <table  style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <th align="Left" nowrap="true" style="padding:2; ">
                                            <span id="LabelStyle_CSS">Proof do matryc:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobProofToPlates">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                        <th align="Left" nowrap="true" style="padding:2; padding-left:5; ">
                                            <span id="LabelStyle_CSS">Ilość proofów do matryc:</span>
                                        </th>
                                        <td  align="Left" width="25" style="padding:2 2 2 2 ;" >
                                            <span id="TextValue_CSS_DisabledInputTypeText">
                                                <xsl:for-each select="JobSpec">
                                                    <xsl:for-each select="JobQuantityProofToPlates">
                                                        <xsl:apply-templates/>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <br/>
                                <table style="padding-left:10;  margin-bottom:1;">
                                    <tr>
                                        <td>
                                            <span id="LabelStyle_CSS">
                                            Uwagi do matryc:
                                        </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="TextValue_CSS_DisabledInputTypeText" style="padding:5 5 5 5 ;" bgcolor="white">
                                            <xsl:for-each select="JobSpec">
                                                <xsl:for-each select="JobCommentsToPlates">
                                                    <p style="margin-left:5; padding-bottom:0.3cm; page-break-after:always; text-align:left; height:80; width:350px;">
                                                        <xsl:apply-templates/>
                                                    </p>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </table>
                                <!-- GHOST CODE BEGIN - !!!DO NOT REMOVE!!! - DOES NOTHING BUT AFFECTS TEMPLATE IN SORT THINGS -->
                                <tr>
                                    <td align="left" valign="top" style="position: absolute; visibility: hidden">
                                        <img id="folding_image" src=""/>
                                    </td>
                                </tr>
                                <!-- GHOST CODE ENDS -->
                                <script>
    //Liczenie tabeli - X i Y wraz z sumowaniem tabeli - J.A. - 24.05.2022

    $('#total-cm-all, #total-cm').prop('readonly', true);

$('#row-X, #row-Y').on('keyup', function (e) {
    var row = $(this).closest('tr');
    var rowX = $('#row-X', row),
        rowY = $('#row-Y', row),
        rowCM = $('.total-cm', row);
    rowX = (rowX.val()).replace(",", ".");
    rowY = (rowY.val()).replace(",", ".");

    if (!isNaN(rowX)) {
        if (!isNaN(rowY)) {
            rowCM.val((Number(rowX * rowY)).toFixed(2));
        }
    }

    var sum = 0;

    $('.total-cm').each(function () {
        sum += Number($(this).val());
    });

    $('#total-cm-all').val(sum.toFixed(2));

});

//Uniweralny format daty do inputów - J.A. - 24.05.2022
//Aby automatycznie data dodawała się do kalendarza pole input musi być odblokowane 
//Nie może posiadać: disabled="disabled"        Musi posiadać:  class="today"

var today = new Date();
var rok = today.getFullYear();
var miesiac = today.getMonth() + 1;
var dzien = today.getDate();

if (10 > miesiac) {
    miesiac = "0" + miesiac;
}
if (10 > dzien) {
    dzien = "0" + dzien;
}

//console.log(rok+"-"+miesiac+"-"+dzien);
$('.today').val(rok + "-" + miesiac + "-" + dzien);

var option = "";

var spr = $(document).ready(function () {



    return spr;

});



function handleUpdateButtonClick() {
    g_blnUpdating = true;

    if (spr[0].defaultView.option == "Tak") {

        var out = false;
    } else if (spr[0].defaultView.option != "Tak") {

        var out = true;
    }

    return out;
}

function handleTabClick(
    strTabId
) {
    // hide all the tabs
    document.getElementById("repro").style.visibility = "hidden";
    document.getElementById("proof").style.visibility = "hidden";
    document.getElementById("plates").style.visibility = "hidden";

    document.getElementById("reproTab").style.background = "#b8b8b8";
    document.getElementById("proofTab").style.background = "#b8b8b8";
    document.getElementById("platesTab").style.background = "#b8b8b8";

    document.getElementById("reproTab").style.borderBottom = "solid dimgray 1px";
    document.getElementById("proofTab").style.borderBottom = "solid dimgray 1px";
    document.getElementById("platesTab").style.borderBottom = "solid dimgray 1px";

    document.getElementById("reproLabel").style.color = "#3F3F3F";
    document.getElementById("proofLabel").style.color = "#3F3F3F";
    document.getElementById("platesLabel").style.color = "#3F3F3F";

    // hide the folding image too
    document.getElementById("folding_image").style.visibility = "hidden";

    // show the tab that was clicked on
    document.getElementById(strTabId).style.visibility = "visible";
    document.getElementById(strTabId + "Tab").style.background = "#E3E3E3";
    document.getElementById(strTabId + "Tab").style.borderBottom = "#3F3F3F";
    document.getElementById(strTabId + "Label").style.color = "#3F3F3F";

    // show the folding image when the color tab is selected
    if (strTabId == "color") {
        initFoldingImage();
    }

    // ensure the custom Final Trim Size appears when appropriate
    toggleWidthHeightVisibility(document.getElementById("FinalTrimSize"));

} //handleTabClick

</script>
                            </div>
                            <!-- PLATES SECTION END -->
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>