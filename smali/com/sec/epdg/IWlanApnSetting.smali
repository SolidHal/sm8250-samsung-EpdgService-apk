.class public Lcom/sec/epdg/IWlanApnSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanApnSetting$IKeSetting;,
        Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private IWlanSettingName:Ljava/lang/String;

.field private ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

.field private ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

.field private mApnType:Ljava/lang/String;

.field private mDeviceIdentity:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

.field private mFastReauth:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

.field private mIkeVirtualAdapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

.field private mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

.field private mIpSecIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field private mIpSecUserAuthval:Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;

.field private mIpSecauthType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

.field private mIpsecOwnUri:Ljava/lang/String;

.field private mIpsecRemoteUri:Ljava/lang/String;

.field private mMobikeval:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

.field private mMtu:I

.field private mOwnUriType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

.field private mPeriodicDpdTimer:I

.field private mPfsval:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

.field private mRemoteUriType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

.field private pcscfattributes:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-string v0, "[IWLANAPNSETTING]"

    sput-object v0, Lcom/sec/epdg/IWlanApnSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/DataType/IWlanEnum$PfsState;Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;ILcom/sec/epdg/DataType/IWlanEnum$PcscfConf;ILcom/sec/epdg/DataType/IWlanEnum$Mobike;Lcom/sec/epdg/DataType/IWlanEnum$Imei;Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;I)V
    .locals 27
    .param p1, "iWlanSettingName2"    # Ljava/lang/String;
    .param p2, "ipsecUserAuthval"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    .param p3, "pfsval"    # Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    .param p4, "iptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .param p5, "ownUriType"    # Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .param p6, "ownUri"    # Ljava/lang/String;
    .param p7, "remoteuritype"    # Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .param p8, "remoteUri"    # Ljava/lang/String;
    .param p9, "apnType"    # Ljava/lang/String;
    .param p10, "ipsecauthtype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .param p11, "adapterConf"    # Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .param p12, "tunnelmode"    # Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .param p16, "ipseclifetype"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .param p17, "ipseclifeval"    # I
    .param p18, "ikeversion"    # Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .param p22, "ikelife"    # I
    .param p23, "ikewindow"    # I
    .param p24, "ikeconntimeout"    # I
    .param p25, "ikedpdtimeout"    # I
    .param p26, "eaptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .param p27, "ikenatval"    # I
    .param p28, "pcscfVendorAt"    # Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .param p29, "periodicDpdTimer"    # I
    .param p30, "mobikeval"    # Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    .param p31, "imeiVendorAt"    # Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .param p32, "fastReauth"    # Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    .param p33, "deviceIdentity"    # Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    .param p34, "mtu"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;",
            "Lcom/sec/epdg/DataType/IWlanEnum$PfsState;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;",
            "Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;",
            "Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;",
            ">;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;",
            "I",
            "Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;",
            ">;IIII",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;",
            "I",
            "Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;",
            "I",
            "Lcom/sec/epdg/DataType/IWlanEnum$Mobike;",
            "Lcom/sec/epdg/DataType/IWlanEnum$Imei;",
            "Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;",
            "Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;",
            "I)V"
        }
    .end annotation

    .line 88
    .local p13, "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .local p14, "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .local p15, "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    .local p19, "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .local p20, "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    .local p21, "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->pcscfattributes:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    .line 61
    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    .line 89
    new-instance v1, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting$1;)V

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    .line 90
    new-instance v1, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    invoke-direct {v1, v2}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting$1;)V

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    .line 91
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->IWlanSettingName:Ljava/lang/String;

    .line 92
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/sec/epdg/IWlanApnSetting;->mOwnUriType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    .line 93
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecOwnUri:Ljava/lang/String;

    .line 94
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/sec/epdg/IWlanApnSetting;->mRemoteUriType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    .line 95
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecRemoteUri:Ljava/lang/String;

    .line 96
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/sec/epdg/IWlanApnSetting;->mApnType:Ljava/lang/String;

    .line 97
    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecUserAuthval:Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;

    .line 98
    move-object/from16 v8, p3

    iput-object v8, v0, Lcom/sec/epdg/IWlanApnSetting;->mPfsval:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    .line 99
    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecauthType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 100
    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 101
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/sec/epdg/IWlanApnSetting;->mIkeVirtualAdapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 102
    move-object/from16 v12, p28

    iput-object v12, v0, Lcom/sec/epdg/IWlanApnSetting;->pcscfattributes:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    .line 103
    move/from16 v13, p29

    iput v13, v0, Lcom/sec/epdg/IWlanApnSetting;->mPeriodicDpdTimer:I

    .line 104
    move-object/from16 v14, p30

    iput-object v14, v0, Lcom/sec/epdg/IWlanApnSetting;->mMobikeval:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    .line 105
    move-object/from16 v15, p31

    iput-object v15, v0, Lcom/sec/epdg/IWlanApnSetting;->mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    .line 106
    iget-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-object/from16 v16, v1

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    move/from16 v22, p17

    invoke-static/range {v16 .. v22}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->access$200(Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;I)V

    .line 108
    iget-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-object/from16 v16, v1

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v20, p21

    move/from16 v21, p22

    move/from16 v22, p23

    move/from16 v23, p24

    move/from16 v24, p25

    move-object/from16 v25, p26

    move/from16 v26, p27

    invoke-static/range {v16 .. v26}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->access$300(Lcom/sec/epdg/IWlanApnSetting$IKeSetting;Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;I)V

    .line 110
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->mFastReauth:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    .line 111
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/sec/epdg/IWlanApnSetting;->mDeviceIdentity:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    .line 112
    move/from16 v1, p34

    iput v1, v0, Lcom/sec/epdg/IWlanApnSetting;->mMtu:I

    .line 113
    return-void
.end method

.method public static declared-synchronized getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/DataType/IWlanEnum$PfsState;Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;ILcom/sec/epdg/DataType/IWlanEnum$PcscfConf;ILcom/sec/epdg/DataType/IWlanEnum$Mobike;Lcom/sec/epdg/DataType/IWlanEnum$Imei;Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;I)Lcom/sec/epdg/IWlanApnSetting;
    .locals 37
    .param p0, "iWlanSettingName2"    # Ljava/lang/String;
    .param p1, "ipsecUserAuthval"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    .param p2, "pfsval"    # Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    .param p3, "iptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .param p4, "ownUriType"    # Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .param p5, "ownUri"    # Ljava/lang/String;
    .param p6, "remoteuritype"    # Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .param p7, "remoteUri"    # Ljava/lang/String;
    .param p8, "apnType"    # Ljava/lang/String;
    .param p9, "ipsecauthtype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .param p10, "adapterConf"    # Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .param p11, "tunnelmode"    # Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .param p15, "ipseclifetype"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .param p16, "ipseclifeval"    # I
    .param p17, "ikeversion"    # Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .param p21, "ikelife"    # I
    .param p22, "ikewindow"    # I
    .param p23, "ikeconntimeout"    # I
    .param p24, "ikedpdtimeout"    # I
    .param p25, "eaptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .param p26, "ikenatval"    # I
    .param p27, "pcscfVendorAt"    # Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .param p28, "periodicDpdTimer"    # I
    .param p29, "mobikeval"    # Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    .param p30, "imeiVendorAt"    # Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .param p31, "fastReauth"    # Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    .param p32, "deviceIdentity"    # Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    .param p33, "mtu"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;",
            "Lcom/sec/epdg/DataType/IWlanEnum$PfsState;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;",
            "Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;",
            "Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;",
            ">;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;",
            "I",
            "Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;",
            ">;IIII",
            "Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;",
            "I",
            "Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;",
            "I",
            "Lcom/sec/epdg/DataType/IWlanEnum$Mobike;",
            "Lcom/sec/epdg/DataType/IWlanEnum$Imei;",
            "Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;",
            "Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;",
            "I)",
            "Lcom/sec/epdg/IWlanApnSetting;"
        }
    .end annotation

    .local p12, "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .local p13, "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .local p14, "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    .local p18, "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .local p19, "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    .local p20, "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    const-class v1, Lcom/sec/epdg/IWlanApnSetting;

    monitor-enter v1

    .line 127
    :try_start_0
    new-instance v0, Lcom/sec/epdg/IWlanApnSetting;

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move-object/from16 v28, p25

    move/from16 v29, p26

    move-object/from16 v30, p27

    move/from16 v31, p28

    move-object/from16 v32, p29

    move-object/from16 v33, p30

    move-object/from16 v34, p31

    move-object/from16 v35, p32

    move/from16 v36, p33

    invoke-direct/range {v2 .. v36}, Lcom/sec/epdg/IWlanApnSetting;-><init>(Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/DataType/IWlanEnum$PfsState;Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/DataType/IWlanEnum$Ikeversion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILcom/sec/epdg/DataType/IWlanEnum$IkeEapType;ILcom/sec/epdg/DataType/IWlanEnum$PcscfConf;ILcom/sec/epdg/DataType/IWlanEnum$Mobike;Lcom/sec/epdg/DataType/IWlanEnum$Imei;Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v0, "instance":Lcom/sec/epdg/IWlanApnSetting;
    monitor-exit v1

    return-object v0

    .line 126
    .end local v0    # "instance":Lcom/sec/epdg/IWlanApnSetting;
    .end local p0    # "iWlanSettingName2":Ljava/lang/String;
    .end local p1    # "ipsecUserAuthval":Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    .end local p2    # "pfsval":Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    .end local p3    # "iptype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .end local p4    # "ownUriType":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .end local p5    # "ownUri":Ljava/lang/String;
    .end local p6    # "remoteuritype":Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .end local p7    # "remoteUri":Ljava/lang/String;
    .end local p8    # "apnType":Ljava/lang/String;
    .end local p9    # "ipsecauthtype":Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .end local p10    # "adapterConf":Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .end local p11    # "tunnelmode":Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .end local p12    # "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .end local p13    # "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .end local p14    # "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    .end local p15    # "ipseclifetype":Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .end local p16    # "ipseclifeval":I
    .end local p17    # "ikeversion":Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .end local p18    # "ikeencryption":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;>;"
    .end local p19    # "ikeintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;>;"
    .end local p20    # "ikedhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;>;"
    .end local p21    # "ikelife":I
    .end local p22    # "ikewindow":I
    .end local p23    # "ikeconntimeout":I
    .end local p24    # "ikedpdtimeout":I
    .end local p25    # "eaptype":Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .end local p26    # "ikenatval":I
    .end local p27    # "pcscfVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .end local p28    # "periodicDpdTimer":I
    .end local p29    # "mobikeval":Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    .end local p30    # "imeiVendorAt":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .end local p31    # "fastReauth":Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    .end local p32    # "deviceIdentity":Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    .end local p33    # "mtu":I
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clone()Lcom/sec/epdg/IWlanApnSetting;
    .locals 3

    .line 140
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanApnSetting;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v1, Lcom/sec/epdg/IWlanApnSetting;->TAG:Ljava/lang/String;

    const-string v2, "CloneNotSupportedException IWlanApnSetting"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Is too"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdentity()Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mDeviceIdentity:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    return-object v0
.end method

.method public getFastReauth()Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mFastReauth:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    return-object v0
.end method

.method public getIWlanSettingName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->IWlanSettingName:Ljava/lang/String;

    return-object v0
.end method

.method public getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    return-object v0
.end method

.method public getImeiVendorAttrVal()Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    return-object v0
.end method

.method public getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    return-object v0
.end method

.method public getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mMobikeval:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mMtu:I

    return v0
.end method

.method public getPcscfattributes()Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->pcscfattributes:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    return-object v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mPeriodicDpdTimer:I

    return v0
.end method

.method public getmApnType()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getmIkeVirtualAdapterConf()Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIkeVirtualAdapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public getmIpSecIpType()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getmIpSecUserAuthval()Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecUserAuthval:Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;

    return-object v0
.end method

.method public getmIpSecauthType()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecauthType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public getmIpsecOwnUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 172
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecOwnUri:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sec/epdg/EpdgUtils;->updateOwnUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "mImsiUri":Ljava/lang/String;
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sec/epdg/EpdgUtils;->includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "mMacUri":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/IWlanApnSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getmIpsecOwnUri() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v1
.end method

.method public getmIpsecRemoteUri()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpsecRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method public getmOwnUriType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mOwnUriType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getmPfsval()Lcom/sec/epdg/DataType/IWlanEnum$PfsState;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mPfsval:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    return-object v0
.end method

.method public getmRemoteUriType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting;->mRemoteUriType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public setmIpSecIpType(Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;)V
    .locals 0
    .param p1, "mIpSecIpType"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 148
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting;->mIpSecIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 149
    return-void
.end method
