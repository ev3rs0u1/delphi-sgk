object m_Form: Tm_Form
  Left = 0
  Top = 0
  Margins.Left = 1
  Margins.Top = 1
  Margins.Right = 1
  Margins.Bottom = 1
  AlphaBlend = True
  AlphaBlendValue = 222
  Caption = 'SGKT00l v1.0'
  ClientHeight = 275
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    385
    275)
  PixelsPerInch = 96
  TextHeight = 19
  object sListView: TsListView
    Left = 0
    Top = 32
    Width = 384
    Height = 243
    BevelInner = bvNone
    BevelOuter = bvNone
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBlack
    Columns = <
      item
        Caption = 'Sex:'
        Width = 38
      end
      item
        Alignment = taCenter
        Caption = 'QName:'
        Width = 100
      end
      item
        Alignment = taCenter
        Caption = 'QunNum:'
        Width = 80
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'QunTitle:'
      end>
    ColumnClick = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    TabOrder = 2
    ViewStyle = vsReport
    OnMouseDown = sListViewMouseDown
    ExplicitWidth = 389
    ExplicitHeight = 238
  end
  object sEdit: TsEdit
    Left = 0
    Top = 1
    Width = 290
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Color = clBlack
    Font.Charset = GB2312_CHARSET
    Font.Color = clLime
    Font.Height = -15
    Font.Name = #24494#36719#38597#40657
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    ExplicitWidth = 295
  end
  object sButton: TsButton
    Left = 292
    Top = 1
    Width = 92
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'Find'
    Default = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #24494#36719#38597#40657
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = sButtonClick
    ExplicitLeft = 297
  end
  object IdHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gec' +
      'ko) Chrome/42.0.2311.152 Safari/537.36'
    HTTPOptions = [hoForceEncodeParams]
    Left = 332
    Top = 61
  end
  object sSkinManager: TsSkinManager
    InternalSkins = <
      item
        Name = 'Terminal4bit (internal)'
        Shadow1Color = clBlack
        Shadow1Offset = 0
        Shadow1Transparency = 0
        Data = {
          41537A66030000000B0000004F7074696F6E732E6461746226000078DAD5596D
          6FDB3610FE1E20FFC1F9031DA9772310104AA62521B26848B2D3AE4882AECB56
          636D532C1906EC437FFBEE48499629C9919BA6F31284A1E5E3F178F7F0EE21F5
          364A45C0D2249B8BEBD39340BC0E631E5EF2997F41886D416379178412037A8E
          7D615E102914E5EC4D4BC66D64A65B9955A6AB72CC5ACC234A2C14A9C87DE8C4
          A26CFA0B56943C0F9272C196BEFAF02A582C4F4F72364BC45669651568A6968B
          564C955229D69E5D095AD35A108648C162C1D2B42566A1911464A9ED40CFB02E
          6823B6A3CF346A4139A41664AB328625B070F278F7EED3E9C99AE7452232DF7B
          45E0DB192FC23C5996F8A4F863F37972FFE571F369F3CFDDAF93DFEEFF9CFCF5
          B0F9FCFB041EBFFBF2E5E3E6FDBBC7CDFDE787C9DF9BC70F13EB97CDE304443C
          FCFFFEFE23741FDE7FB8FB74F7F00AAC5B2533DF324F4F22509E2C58C4D1DF9E
          8716CAB08069C4A4CAC220094516A6A2904284D48D0C0FADFC2785629E2E71A9
          9460838AA4A34DBB25B360AF1B35D4AED598565B24C91A1193D6223669896422
          5FF8EA21C8E074A4C29D0A52CC66E28A8AF9BCE0A54F9B0741BACA7DAB8A4E83
          471539191AC76B85662EB20A608E6D78F0A00C533E2F116E32AE1225A67202AC
          922ABC181738DF7823776608443EE3F9EEA3A458B290FBB22BE737B09727512C
          4D29C34094A558F8D4712DF8F1F0512996BE3D350DC37351183FC2283E4BCA92
          BF2E6FC5254ABBCED421EA6910DDF235CF7CD732C03DA9B82DC42A57931671EB
          4320A7C5189AF0E9F4E4ED82672B4804FC5A6EC7ADC72CC39EDA9E259F9639CB
          600D39CFC2373E4558779F747C0DBA8B658AF6E6A05BCA82FB5951F8C592F359
          B0823567B732905278C9329E5ED71E84E7C5A57F8370BEC1004063B8D89B4243
          4CBDA13704FE28EE07C80330D3128200FFFC76BAE93531CC459A0665A66200F3
          47E99B652C67AFD1E161E431FCC47354E447FAA4AD1F03AF6BC7E4042B42D8CA
          0C55E1AAABA877BEB67619D57EF5A4566F4FBF593DC04F572E778BF48CED7D9B
          67741474636F1875C44D8CBD23636FE80D465FC67E006372B659B24E661289DA
          1C0EAD61E458D8731ACDA4D520BEAC017C7557A740462D6AD9D6D496F347B958
          2DA13E3E07E0361A50EBB6C0E58E3B6A27F6C66467B3578262059B7521663253
          606E604986F9E1BA77DD4DF5A6B63B25A6D1DE6ABB6BA406BAD625D8C335BA72
          51546F9A4DDC31AC2859C90BAC0332942C15919653E690AAE5B7980C7BA28C61
          A518560F4D31492F921A037A194A9F5FF758BA75A632FB8A070A8FD7A3B7E01C
          7C9E453C63410A75AECC57BC7E96806E86A4A2F08D274D6B52F9DE604B02D558
          3836EB7F1F0BB7F9188A5BCEAA7AD483B9CE107D3CF2A118C64A4E540FEC1A4F
          103D589A32FF2B620F1ADBC09E8D3D179AAF645B956E5371F5ECCA34603AE922
          25603D79CAB6EA74E448CD72364B6FBA08D695234057859AA276F08C954C5975
          AE5AEB9C9CD77D724EC979FDEB59E7A4FDDBCD757AD0FA53920E3EDCBE6552A6
          1D1AB2454B1F1AC6A20F86EF00826800E9C5F618F80D55CE38C9CAEB61CC69B8
          D5422D632B81A520360C2C72A3820AF384972AA687F864CC0E2F52AC9B61CC32
          D808689D476B20CA544A8673B9AC576A7CC51AAA7307F212A33A111A17CD24EB
          1D29E416C492C74BAAA4CA24BC84A3D6CF28E2CA538C3C86A208B1B72270002B
          B72266236229911DE82D73114995557D52A5C0958BB09BFADFA603CD0EC3A172
          2AA86A141380E1617D93F9607A334422681D3116285235B8CDBDAD11DA362740
          792AEFF697E5F189532B7103493962AB883F9BB9744F63E3AAA09EC1E4D14D51
          A9FFA44AE9B96B0989040E8B2570E58E8FA86954C403181B3ACADACF7C7AA382
          6B168B4000117F1A30FD75C1DCC35FFB01D3CCAEE730CDB216D17E3681AF6A09
          9C799DE961996C142DEF8BEE93D1D621D603C85288F4F91E30B71EA8A6FE210E
          18B360DD4F9D73029C11C0A4C5B3973FBEF4EB268D58AC6EB53ADDAAD2135FB7
          0921950CD00556481D24846E4D08BBAC12EC18314EE71F72E8B0AB8CE634DAC9
          1446AB865487E7B89B9CCFD457F80D5EA29E9967F48C9CA1E64E33260D1F82C5
          03134C0DF56FD99A8A2AD7B471302FBAC670216DDC7904A4930C90E7961992A8
          673FB17D0ED35DBB331649FBD4D5397C45C0BB4E94FED39968A7B8B49DA8D940
          860FF346FB8A89E5066EC1A1F2D748D17152EB3152C63E296477392F8AAD4C3F
          571FCF86EB5DDB4E3B6B2DED104C1A047B0EF6BCB1696760DC4BA69DE7301145
          07C7EEA32216577311AE8A5A4807D453C96544791CAE856D5054093748A2235A
          FD5EBB076E495A94B5B9F77E19E2DA9AA9BA017F8179C65E2EB58CA92FCC5F66
          D52586B567B587A2E4C71CEFC0DA7E771CADB903A03D4E7BA1D40CBCDB523779
          56C351B6E692BD777AE3EED8FAEF80C7D10179A4E9BB863CB0DE1DF43A6EFF7D
          FAF625CEBABB6FA5EB0CBBBE8A31CDFD7737BD777675C98FBF6FC9D773719A47
          D92EB752F77DC317BA76557867398B762F6E5B6E1D7CF9A5D7B901DE8DB04AD6
          5C5C65F8AC2A3630294B97313BDA972AD23A7539D2F76EED082C3C02E3C6BCD1
          1E5E40C1531E221FD156208F217B5907BE544A20576758778F2C9528C3A094FC
          4FAE60CBE0166F59F65C015A3D55AF5D467EACC1FF02C3FD539F0E0000004275
          74746F6E487567652E626D7036DC000078DAED9D5B4C135B17C7970A080202C7
          0382202AA8050A1E406E7240A8E0052CA8288A0802DE28A222DEA0152FA0A8E0
          0D100B8258A33E999818637C303EF8A289FAA0C6972FE653A32F1A13A30F5E62
          BC7DBB9DB6B4A5CCB4D3DDE93764FDCD0A06CD6FEDFDDF7BF64C9BBDD7CC2B48
          F92FE894E20610457E4E1D057097FC1C059ECC3FFC0760823713E4973AFD217F
          E020F9CB5E127524B691D84A62330905898D24D6935847A28A4425897212A524
          4A48AC24B182C4521272128B492C22914D622E894C121924E6904823914A228E
          8494440C300D9590984922924484B6E124C24984920821114C2290841F89F124
          7C4868FBE04542DB350F12EE244633FDFAF3E70FFCFEFD1B7EFDFA053F7FFE84
          1F3F7EC0F7EFDFE1DBB76FF0F5EB57F8F2E50B7CFEFC193E7DFA041F3F7E840F
          1F3EC0FBF7EFE1DDBB77F0F6ED5B78F3E60DBC7EFD1A5EBD7A052F5FBE84172F
          5EC0F3E7CFE1D9B367F0F4E95378F2E4093C7EFC181E3D7A040F1F3E84070F1E
          C0FDFBF7E1DEBD7B70F7EE5DB873E70EDCBE7D1B6EDDBA05376FDE841B376EC0
          F5EBD7E1DAB56B70F5EA55B872E50A5CBE7C192E5DBA04172F5E840B172EC0C0
          C000F4F5F541777737747575417B7B3BB4B5B5416B6B2B34373743535313A854
          2A686C6C84868606A8AFAF87BABA3AD8B2650BD4D6D68242A180CACA4AA8A8A8
          80F2F272282B2B83D5AB574349490914171743414101C8E572C8CFCF87DCDC5C
          90C964909D9D0D59595990999909E9E9E990969606A9A9A99092920209090910
          1F1F0F717171101B1B0B52A914626262203A3A1A241209444646424444048487
          87435858188486864248480804050541606020F8FBFB839F9F1FF8FAFA82B7B7
          378C1B370EBCBCBCC0D3D3133C3C3CC0DDDD5D37FF92939387090D6834B64632
          0B6724F2ED6173E618461A3B94CC4362E6DBC3E69343D47C3E707B52889BCF9F
          6E5B0671F31DA373671039DF713C7B0271F32DFE63C7E10336E970878D1904E6
          0FF4F5F6A839D5D3DB37601BDFA2EDAADA352B6CD29A5A95451F5CCF1FE8EB39
          DB79EAC4B1A39C3A76E254E7D91E738FB8F01DFB48DB8BF232926D52465E11E9
          C3BE0E8E0402F2FBD5674EB7B5EEDFABDCB36B278776ED51EEDDDFDA76FA8CBA
          9F9D6FD6FA125BDB3ED88712B31EB892DFAFEE3CDED2D4B063AB62E3FAAA4A0E
          55ADDFA8D8BAA3A1A9E578A7A943C3E3F9B4DE4A0F5CC63FAFEE6A3FA8DC5EB3
          616D69F1F22585051C2A5CB2BCB874ED869AEDCA83ED5DEAF3C3F18DBF6FDFC6
          ABF5FA1E6C6B1F268160FC73DD279B95759B2A5615C9F3E7E7C8B2B338942DCB
          999F2F2F5A55B1A94ED97CB2FB9C75FE60F3B72CE5D97A5D0F966EB1DE01C1F8
          BD5D4754F5D5E5C5858B72B232D3D352B8992969E99959398B0A8BCBABEB5547
          BA7AD9F8EAE61A479AAFED404DB3DA75FC0BBD1D871A3757AD2C5820CB986383
          37468FE664C81614ACACDADC78A8A3F7C250BEC1B2E6757CE7BEB10379EB9A87
          0E8050FCDE8E96DD8AB2650BED73C7E0D0C265658ADD2D1DBD43F8C6C95F93E7
          58EBB5CAAB69B74C20149FD8B3B3BA549E3BD75E771887E6E6CA4BAB775A3188
          CADA6090C91A2130FF5CD7A1DDD5AB17CFFB37951F39F5DF798B5757EF3ED475
          CE9C6FB8F16EA3D17C6D07B675982510887FBEFB48A3A294BF3D8C41A58AC623
          DDE7ADF1F79550693EE940C93E57F0D527559BCBE40ED8A333485EB65975D2EC
          166018DE5A0A8B03A3BC5AD3011688DFDFD55C5FB52CD7117BB406E52EABAA6F
          EEEA1FCAA736BC96032C105FDDAEAC5EB970AE43F61083E62E5C59AD6C570FE1
          531C5E9301168EDFDF79B0AEBC4036C751F41C594179DDC1CE7E239FFEF09A0F
          B0407CF571E5A6E205193C6EECE64AC95850BC49795C6DC1A73ABC66032C0C7F
          E04CCBF68A42C7A78F760215566C6F393360CE3FBC86E2F092015E7358587EDF
          E9A69A558B1C9F3EDA09B468554DD3E93E73FE8115349B9F9CBCE280B0FC9EB6
          860D453914A60F994039451B1ADA7AF47CFD75A62AA2DBFE2295C64CCEE69F6D
          DDB1569E4561FA900994255FBBA3F5AC199EF2F260FA8822087FA073FFD6D2FC
          4C3AECCCFCD2ADFB3BCDBE90A6BC3C982C10C2F0FB4EED5514CF4FA7C34E9F5F
          ACD87BAACF944F7B79185C2084E1F79E506E5C9E9346079D96B37CA3F244EF48
          F2A7E7D89EF54B6454961FB200C996ACDF73AC6724F9A33EBAABAA309B163BBB
          B06AD751F5C8F267676541162D765641E54EF407FD417FD01FF407FD417FD01F
          F407FD417FD01FF407FD417FD01FF407FD417FD01FF407FD417FD01FF407FD41
          7FD01FF407FD417FD01FF407FD417F84F307F747B1F1717F1D3BDFD9FB33717F
          AF89ACECEFC5FDE126B2B23F1CCF170CCAFC7C019E4FB194F9F9143CDF6421EB
          E79BF07C9C41D6CFC7E1F94ABD869CAFC4F3B9661A723E17CF779B6AD8F3DD58
          1F40678F95FA00585FC2C41E2BF525B03E89893DD6EA93607D9B417BACD5B7C1
          FA485AB1D447C2FA5AECF5B5B03E1B477D36ACEFC751DF0FEB43B2D787C4FAA2
          1CF545B13E2D477D5AAC6FCC51DF18EB6373F1B1BE3A075FECF5F39DCF17FBFB
          179CCE17FBFB3B9CCF17FBFB5F9CCFE799C266F808E0DB9BC35EB678F830ACA4
          9219364A22051E12339FB02382FD7D6C947F70849D3944CD974AB46C2FB7D1A3
          6CD468372F6D0E5B53889B2F9D1EEC6F07DB24877FF0741B32889B4FE8E3ED87
          1B528CE7CC20727E4C286FBA3E4368CCC8E54BA707791AE9BE6133A509B3B96F
          8DB313A433C37C8D193C83861F0233BE7BC0C470496C62122B3C31293156123E
          31C0FDFF816F62BEDFD43876B08592E2A6FA710E8109DF23705ABC3DFCF86981
          1EAEE6C78418CC0F8CB661DE0C9947D1818621088961E7FB8449EDE74BC37C5C
          CA37E203A2EC9A3A834A8A0A604960E48F9D348B1F7FD6A4B1AEE31BF19313F9
          D1B54A9C3C6C02237F42147F7ED40457F10D78EF68FE74ADA2BDAD2730F0C784
          3AC60F1DE312BE3494C1FF15EB185EA389FD8B49102AB5C6F79CE2287F8AA72B
          F8D3C7EBF07FFFE3285EA3F9E76F5D82F1D3ADF0C7453ACE8F1C273C3F26C84D
          377B28D8430CD2CD20B7A098217C4F0ACD271DF0149AAF9F9DDE0E5F5C8C62BD
          2D66A89E3F660A1DFE943102F3F5B3D3C1A57950D1163354CF7770E91C54A8B0
          7C69B06E764EA685D76874B779B760A9197F023DFE0441F98CFD010E3CF7582A
          31C0740018FE58079E4B2C15355640BEDE7E8A7892C06400F4FC4934F99304E4
          4BFCB5F607F2FC50615D49DACF62A3FD25837C1F9E0FFDD635CB47387E8417D5
          C599916E89F68A18E487D1E58709C667A6A71F8F4FEC6C9AED6798A00CDF83C7
          276A36493D84E233D3732A5DBC4633D53041F5972F6D7EA050FC19BAAF3DE268
          F3E3745FC4CC30F0A7D1E64F138AAFBB7C7DA9AECE5A25F9EA2F601DDFDDAE6F
          F36C51BCBB307CE6F2A5BCBA6915C65CC00C3F803E3F40183E73F9CEA4CF9FC9
          5CC00C7F227DFE4461F8CCE54B79F5D74ACA5CC00C3F9C3E3F5C487E027D7E82
          295F429F2F11924FF9E947ABD9A67C4ADF9C982A56483E7DBC4663CAA7F8D9D7
          A04421F9CEF687FAE30379801092EF6C7F908F7CE4231FF9C8473EF2918F7CE4
          231FF9C8473EF2918F7CE4231FF9C8473EF2918F7CE4231FF9C8473EF291EF5A
          3EEE6F61F747ECFBA3707F1D3B1FF767B2F3717FEF707CDC1FCECEC7F305EC7C
          3C9FC2C1C7F34DEC7C3C1FC7CEC7F395EC7C3C9FCBC1C7F3DDEC7CAC0FC0CEC7
          FA121C7CAC4FC2CEC7FA361C7CAC8FC4CEC7FA5A1C7CACCFC6C1C7FA7EEC7CAC
          0FC9C1C7FAA21C7CAC4FCBC1C7FAC61C7CAC8FCDC1C7FAEA1C7CB1D7CF773E5F
          ECEF5F703A5FECEFEF703E5FECEF7F713E1F44FEFE2001F8FA1CA27DFF143DFE
          FF0011F95C410A0000004D61737465722E626D70FE09010078DAED9D4D4C1CC9
          15800BADB5562C593EF8923DD8E748F621A778018198885D4E21CA01BC074BEC
          C58B64E1C35E808475B6735890B8B391C5213E46486C1209C93E59DC1C2E4880
          D8BD60B30740082FC60683F909D379533DD35457BDFAE99EFE9DA9E747ABBBEA
          754D757DF55EFD4C837FFF87F2AF5A48457E073FBF819F7FC2CF04FCB4905FD3
          F4FF56F35971896BD5AA55AB560BA7C4219E665E9326D76820E09FA7967B4135
          65EE569B53ADBFE744B38AF3167D4EB88702E173B7E88BABE9A3776DC0CF8D26
          1DF0B9F2EBE44EE296CCDB3F2BD0862038D011B8736AB967C53D140836BC870D
          F57141F7B97F1F87341BF7C820A2418FB9E6967B532ACBDD8D2A967BE1D4726F
          4EB5DC9B532D77230DCADEDEDEFEFE3EDA142D95976048B9FC3F4EBD74DFEC62
          F923A40416478CC4BB7AB2F3BAB0DCB7B7B77B7A7A7A7B7B777777237097F195
          AE8BE5D02DF7D4B81F1F1F8F8C8C7C4A657A7AFAECEC2C1477859B8B5D48E48E
          C4973A1E2AD4B68C56B2679424F7E5E56520DED5D5D5DFDF5F2A95C0F7237057
          F045B3140639E19E3DA024B90365600DDC979696565656DADADA2627274F4F4F
          0BCA7D76763696380FE5D4D9BC2F5EBCF8B744202B5BEE272727E3E3E3001DE2
          3C44FBC3C3C3C1C1C18E8E8ECDCD4D91FBC3870F59E8709937EE1558AEFB2626
          A9077D85AC52B244EFBAEBEBEB00BDB3B3736B6BCBABCFDADA1AB8FCE8E8E887
          0F1FFC4AFAAEEDA3F7A1C37928EE898EEFDEF2ED651C02DC2BA545AD093835D4
          E4834420AB6290117798BFCDCCCC00E5C5C5C572B9EC3539D46A7878B8BDBD1D
          9E5DE42EAA9ABB74E854DA58EE49FB3BA0DFD9D9F1A17BB2B1B101A17E6868E8
          E8E8C8E7CE0EE8DC701F96BBD6CC724F9A3B2A30E84F4C4C401C585D5DF5BAC4
          DCDC1C1C0F0579F5EA5525AB56E05C4DC41456D83A680D2CF7D4B8BB74920FCB
          BA81818183830313EE4F9F3E8573FF76387FFEFC39A4BFC2C4CB028513D4C072
          CF8A3BACE3A6A6A65A5B5B171616B4DCBD5C4EAA5D02139F2CDB55ECBC2E0FDC
          4160DCEFEEEEEEEBEB7BB3FB4BBCDCBD8EA4C8B5DC33E40EF2E3EA4AA9548295
          9DE5DE54DC41C0D9DDB8E37C72DCBD7D9BB8A451F76D64AF50A2EFD789E8FD49
          5D7EC677D7EED326C09DE3E8AFB9C27287C9BF5781CA49DCDCADC6CBDD537495
          ADE09EF2FADD6A42DCAD36805AEECDA9967B73AAE5DE9C6AB937A75AEECDA996
          7B866DCBDB4B7EA158F64BA6F520B3DC9385AE9060AB56E1AA5E5509A00F5B7E
          E371AFB3E6093D3802054B097017410B29AAF25D55F90DC65DD3E74D1E5F175D
          A33D7BD88A19BDF5AFE61EF6C10BCBDDE8D9E52D60043D2A7AEBEF967B0EB917
          54CDBB2BDA7BEBBC3D7A9F74F84B157711A59ABB68DF58DCAB8F1CF9E8545D38
          DAB1DE58E404CE35DC39945AEE9C7DDCDC632C309A5B15D5DF39F486F33AF7E2
          C4A87C1729DF109FE24F51A18DA06A64DD1644226D2B34357E7B9AE37B3EB82B
          DA59B641A466A4CAD2FD71B368B3C7C270E73C02AB1517CF03CAA4E3E5CBECC5
          2DC1488CB4A1CF4B19191909D597EA193B72BD7E7734B5E2B927BC5F574F4C36
          795E6956C8A2C2B5B05C13BD3DC692B53D30B59A17424DC8665E49ABB143378A
          E4CD8D9E1F02AE11729B904E7ABCA61B256F10F2052163F4784367AC2C3966EE
          8E8E7B46412F3F71FEA2E9AF10F23585F86742BEA5C7319A720583789D909F09
          794FC83B42CEE9F13D4DB98E191B942CED8761BA44607A8CB5E485819BC19097
          AB795D35E54F843CA250EE13728B90CBF4789FA63CA2B9AC3C21E4949032210B
          84F41172951E1768CA29CD65C5AC64458F6543377744C23B43DCBF0C84778678
          3D93F388DCB592D6F77195F32B14814309727295A63F627CF33A850BF77D2218
          7F42D34F19AF372E59EDEF5AEEFCD298103EC561C2A3C31C53449F3BEE5F53EF
          F3D0FC96907B340EDFA3E71EA06FA98D273F53BFF6A07F49C833420EE9F1CB1A
          FA32B5F1C4B8E43AFD1DDF125170779A9EFB35CAE27E0DCD374CB37C5303749F
          DA5CA393B7F734A47BD08F99A63BAEA15FA0363748A892ADBFA7CDFD369D68DD
          A289F78419E03D9A7E8BDADCA6F3F677743427D4C7B9E9E5339ADE476DBE20A1
          4AB6FE9E36F74E1A6C2FD3C43181CE184DBF4C6D3AE9E5792D6E1F0ADC0F69FA
          556A334642956CFD3D6DEE45F0F7704DEA587F37E09EB3F13D86267598A38C3B
          E6EF6C5B6A2F0BCF9DE46B3E1F0F7727B4BF575BD10DB4B5ECB241B8E769FD1E
          A13163F1770F6BF5EF6A10CD6574EE6A344EF3EED7714003292E415BB228FE8E
          CE5ED493197E06D5B8FBF31C50AE05D0672CCAF89E2BE51985FA3E8E50B33FD2
          A3568CBF8F433AA72B89698CD9056827E8EFC6FBF37C81C10F95B95841356FDC
          11A0BA57BC907B091E3903C4C56EE3D048CE7409D70D465A522F7A1BE71571DE
          C4DF65C3017ABB898107BD3A7373AAD06B7F3E2D38BF8ACADDCEEBB4F33A93F1
          FD8297782FD17177F15090A8BF0746229108E1AB7D015DA4CF6421E52BEC73BF
          8E3399CF2B5A388241D2E33B3700716E287657B6A7710187ED877CF96A7BD9BE
          8D288A7D1B5114FB36CA92233726DFB68C1FC8C64AC3C81FBBE2334FAE1BC8FC
          3D1870F4FE2EB347F7696582EED3CA04DDA7D5951CA10D71E2C1660C10F7B358
          2F7610D74B9C3B11665C4C3AC29DC5279F6C04CA91D9A3DFCBC804FD5E4626E8
          F732BA92C3867764024004822C7727E85F2C774ED2E14E30E80AEE0483A8E02E
          B3F7B9B3DF96CA04FD1E5626E8F7B0BA925540950B161C3A833E009D6D7017BB
          2549F4D6DFC59215432D3A2E736B523D77312B43EE8E107F1CE4A39B6A7C37DC
          B729B0BF3B92FA38FC4737D57C3E94BF17757C97755122F7774E1A6EFD6E3EBE
          F3297E033A17CD18E8390EE3E92C77AEB724CA5D244EA49F8ECCCA449A620C34
          2BBF9A929BFDBA7AB66BD899109295F5FA9D1BC5ECFE3C8AC96AB23D909322FC
          5EE4DFA8CCCFCF67DE7A85D7A0ECEDEDEDEFEFEBFF4B2DB56562B5BD7BF76E3D
          EF3B5945B96F6F6FF7F4F4F4F6F6EEEEEEAAA16B2C337F28ABC6DC8F8F8F4746
          463EA5323D3D7D76762683AEB7CCFCA1AC1A735F5E5E068E5D5D5DFDFDFDA552
          093C5AC65D6F99F943A5A226D3F2FC6A2D6E0341A0B9B4B4B4B2B2D2D6D63639
          39797A7A8A4678BD65A14098AC928AC5DDA84AAE7B7272323E3E0E28217A430C
          3F3C3C1C1C1CECE8E8D8DCDCE4A09B5AE6E37993E61E33085DC5427D1C7ACE71
          5F5F5F07949D9D9D5B5B5B1EB7B5B53570E4D1D151EFBF2AF6C5D432EB0E9F37
          3502817147CF63F9389895CDCCCC00BBC5C5C572B9EC710388C3C3C3EDEDED2F
          5FBEF4619A5B66DECE79D36CB9E3718602DDD9D9F1517AB2B1B101017C6868E8
          E8E888456F6499753BE74D8D40E8B89B077C745811B9A30243F9C4C40478F7EA
          EA2A075A6F99753BE74D8D4060DC45DC4973F7A6EEB0581B181838383870DD30
          9659B773DE3465EE68F9E6DC6175363535D5DADABAB0B0A0E6CE5B66DDCEF954
          0D08397DC5A5796733E70E02A3797777775F5FDF9BDD5F425866DDC2F9D4688B
          FDA4D6983AF97175A5542AC17A2D8465D62D6CB57EEE205A67E72D337F28AB3A
          D5BEA7C1BDA464A2993F9455CBDDAAE56ED5724F5FFFFAD5579C460411C7177F
          967B12AD8712DF12C4A7AF7F119A13EC53B84D21EF5CFABE6E63718FE61D911F
          042D19E50E947F12C4435FAD765891A344CF1B9EBB6122C7DD3031C2C701D9B7
          6FDFFE24110F7D2CDCD5E82DF706E6AE406FB937367743F4967BE37147D1A7C3
          DD640D12974DB6DCB515CB84BB883E05EEFAA77062B3890002451C793E9F5BEE
          8A209F3DF78F6A29DFC96D64F5C901774395A18F771D170A7DC6DC2F11F23985
          CE726F89CE3D9FEAEDCFBC1524B06F930CF734C7F710DC3DE29FD58E1EF44B8D
          C69DA58FEED326CA3D350DC1FDF31AEECF6A2E0FDC3F6E4CEE75B518CABD267E
          9A98C20AFBA6046E901AF74B14B417D83DDF6F69C0389F1C77195FD94D0AE8A9
          72FF984EED5A6AEAA1FFC87237E2CED1441D9FCB12CF834629FA3BA7DFD1E06F
          B91B7357F045B31406E97137B1C9317771AA6CB26C9495130E7AC37357DAC402
          425CAD87DDB7412FA3A037565AC57C71D73E45BC36F583E0366A42EDDB84DD23
          8A33DA84E1CEA64BD1A75261EF97AA64E7317639A3BBEAD8ACCB04BA9ABB4CD4
          3685E61E1944E41DDAA270D79AE594BBEBDEBC79F3CE9D3B7054778C34B96BC3
          0B3111FFA345F14B96D3F9BE26620A2BE82D3283FC7007DC0F1E3C989D9D8563
          057D54105AE8110677F492E72E10BC20EE67B1F4D914F7E25EB6F0C78F1F57FE
          8A634DE0FCC99327903E8F8997050A27A8413EB983A703F4A3A32338C2796410
          0AE8E8A596BB26C587C8760096BBDF197CD0BE99DF0D982F3E589F85767AFDFA
          F59B9A6C6E6E023E487F238897E5DD08277029DAE493BB89BFA7BC8E337D58CE
          C7FD145788003E7A3138D4D0B3DCCFCFCF397632EE15AC6E35BCC3096E904BEE
          E6E37BAE54CF5DCC72B11181342B77E23EFBCFBFD25969A6CADDD0DF8531AB49
          B8FFE3F1DF17E69F97F7DF81BAE5F3CC81867AD888E33B97551BDF3DFAA1B8C3
          34801DDFD95981E59E207782B9303198CF734AD301371C15DCCF05811685C9BF
          57A5CA89EB2236967B12DC151272FDAEF5F7465ABF83CEFDF08333F617503FE5
          FF2EA3B88F}
      end>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = ANSI_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -13
    MenuSupport.ExtraLineFont.Name = #24494#36719#38597#40657
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'D:\Delphi\AlphaControls\Skins'
    SkinName = 'Terminal4bit (internal)'
    SkinInfo = '8'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TListBox'#13#10'TCheck' +
      'ListBox'#13#10'TRichEdit'#13#10'TDateTimePicker'
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = 'TBitBtn'
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TRadioGroup'
    ThirdParty.ThirdListViews = 'TListView'
    ThirdParty.ThirdPanels = 'TPanel'
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'
    ThirdParty.ThirdTreeViews = 'TTreeView'
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TColorBox'
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = 'TPageControl'
    ThirdParty.ThirdTabControl = 'TTabControl'
    ThirdParty.ThirdToolBar = 'TToolBar'
    ThirdParty.ThirdStatusBar = 'TStatusBar'
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'
    ThirdParty.ThirdScrollControl = 'TScrollBox'
    ThirdParty.ThirdUpDown = 'TUpDown'
    ThirdParty.ThirdScrollBar = 'TScrollBar'
    ThirdParty.ThirdStaticText = 'TStaticText'
    ThirdParty.ThirdNativePaint = ' '
    Left = 360
    Top = 61
  end
  object PopupMenu: TPopupMenu
    Left = 306
    Top = 61
    object N1: TMenuItem
      Caption = 'Copy'
      Default = True
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'About'
      OnClick = N2Click
    end
  end
end
