.class public Lcom/sec/erisclient/IPSecConnection;
.super Ljava/lang/Object;
.source "IPSecConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/erisclient/IPSecConnection$BypassCa;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IPSecConnection"

.field public static final TAG_ADAPTER_NAME:Ljava/lang/String; = "virtualAdapterName"

.field public static final TAG_ANTIREPLAY:Ljava/lang/String; = "antiReplay"

.field public static final TAG_CACERT:Ljava/lang/String; = "caCertData"

.field public static final TAG_CID:Ljava/lang/String; = "cid"

.field public static final TAG_DEVICE_IDENTITY:Ljava/lang/String; = "enableDeviceIdentity"

.field public static final TAG_DEVICE_IMEI:Ljava/lang/String; = "deviceImei"

.field public static final TAG_DEVICE_IMEISV:Ljava/lang/String; = "deviceImeiSV"

.field public static final TAG_EAP_ONLY_AUTH:Ljava/lang/String; = "bEapOnlyAuth"

.field public static final TAG_FAST_REAUTH:Ljava/lang/String; = "bFastReauth"

.field public static final TAG_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final TAG_GLOBAL_DNS_CONF:Ljava/lang/String; = "globalDNSConfig"

.field public static final TAG_HOST_ADDRESS:Ljava/lang/String; = "hostAddress"

.field public static final TAG_HTTP_CERT_LOOKUP:Ljava/lang/String; = "bHttpCertLookup"

.field public static final TAG_IKE_CONN_TIMEOUT:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeConnectionTimeOut"

.field public static final TAG_IKE_DHGROUP:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeDhGroup"

.field public static final TAG_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeDpdTimeOut"

.field public static final TAG_IKE_DPD_TIMER:Ljava/lang/String; = "ApnSetting.mPeriodicDpdTimer"

.field public static final TAG_IKE_DSCP:Ljava/lang/String; = "ikeDscp"

.field public static final TAG_IKE_EAP_TYPE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeEapType"

.field public static final TAG_IKE_ENCRYPTION:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeEncryptType"

.field public static final TAG_IKE_IMEI:Ljava/lang/String; = "ApnSetting.mImei"

.field public static final TAG_IKE_INTEGRITY:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeIntegrity"

.field public static final TAG_IKE_LIFE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeLife"

.field public static final TAG_IKE_NAT_VALUE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeNatValue"

.field public static final TAG_IKE_PRF:Ljava/lang/String; = "ApnSetting.ikesetting.mIkePrfAlgorithm"

.field public static final TAG_IKE_VADAPT_NAME:Ljava/lang/String; = "ApnSetting.mIkeVirtualAdapterConf"

.field public static final TAG_IKE_VERSION:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeversion"

.field public static final TAG_IKE_WIN_SIZE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeWindowSize"

.field public static final TAG_IMEI_ATTR_TYPE:Ljava/lang/String; = "imeiVendorAttrType"

.field public static final TAG_IMEI_ATTR_VAL:Ljava/lang/String; = "imeiVendorAttrVal"

.field public static final TAG_INTERFACE:Ljava/lang/String; = "interface"

.field public static final TAG_IPSEC_AUTH_TYPE:Ljava/lang/String; = "ApnSetting.mIpSecauthType"

.field public static final TAG_IPSEC_DHGROUP:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecDHGroup"

.field public static final TAG_IPSEC_ENCRYPT:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecEncryptionType"

.field public static final TAG_IPSEC_INTEGRITY:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecIntegrityType"

.field public static final TAG_IPSEC_IP_TYPE:Ljava/lang/String; = "ApnSetting.mIpSecIpType"

.field public static final TAG_IPSEC_LIFETYPE:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecLifeTimeType"

.field public static final TAG_IPSEC_LIFEVAL:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecLifeval"

.field public static final TAG_IPSEC_OURI_TYPE:Ljava/lang/String; = "ApnSetting.mOwnUriType"

.field public static final TAG_IPSEC_OWN_URI:Ljava/lang/String; = "ApnSetting.mIpsecOwnUri"

.field public static final TAG_IPSEC_PFSVAL:Ljava/lang/String; = "ApnSetting.mPfsval"

.field public static final TAG_IPSEC_RMO_URI:Ljava/lang/String; = "ApnSetting.mIpsecRemoteUri"

.field public static final TAG_IPSEC_RURI_TYPE:Ljava/lang/String; = "ApnSetting.mRemoteUriType"

.field public static final TAG_IPSEC_SETTING_NA:Ljava/lang/String; = "ApnSetting.IWlanSettingName"

.field public static final TAG_IPSEC_TUN_MODE:Ljava/lang/String; = "ApnSetting.ipsecsetting.mTunnelMode"

.field public static final TAG_MOBIKE:Ljava/lang/String; = "ApnSetting.mMobikeval"

.field public static final TAG_N1_MODE:Ljava/lang/String; = "enableN1Mode"

.field public static final TAG_OPERATOR_CODE:Ljava/lang/String; = "operatorCode"

.field public static final TAG_PCSCF4_ATTR:Ljava/lang/String; = "pcscfv4VendorAttr"

.field public static final TAG_PCSCF6_ATTR:Ljava/lang/String; = "pcscfv6VendorAttr"

.field public static final TAG_PDU_SESSION_ID:Ljava/lang/String; = "pduSessionId"

.field public static final TAG_PRESHARED_KEY:Ljava/lang/String; = "presharedKey"

.field public static final TAG_SIMID:Ljava/lang/String; = "simId"

.field public static final TAG_USER_AUTH:Ljava/lang/String; = "userAuth"

.field public static final TAG_V4_HANDOVER_IP:Ljava/lang/String; = "ipv4HandoverAddr"

.field public static final TAG_V6_HANDOVER_IP:Ljava/lang/String; = "ipv6HandoverAddr"


# instance fields
.field private adapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

.field private antiReplay:Z

.field private authType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

.field private bCaCertOk:Z

.field private bEapOnlyAuth:Z

.field private bFastReauth:Z

.field private bHttpCertLookup:Z

.field private caCert:Ljava/security/cert/X509Certificate;

.field private caCertData:[B

.field private cid:I

.field private deviceImei:Ljava/lang/String;

.field private deviceImeiSV:Ljava/lang/String;

.field private enableDeviceIdentity:Z

.field private enableN1Mode:Z

.field private gateway:Ljava/lang/String;

.field private globalDNSConfig:Z

.field private hostAddress:Ljava/lang/String;

.field private ikeDscp:I

.field private imeiVendorAttrType:I

.field private imeiVendorAttrVal:[B

.field private ipsecDhGroup:Ljava/lang/String;

.field private ipsecEncrType:I

.field private ipsecIntegType:I

.field private ipsecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

.field private ipsecLifeTimeVal:I

.field private ipv4HandoverAddr:Ljava/lang/String;

.field private ipv6HandoverAddr:Ljava/lang/String;

.field private isConnected:Z

.field private mBypassCaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/erisclient/IPSecConnection$BypassCa;",
            ">;"
        }
    .end annotation
.end field

.field private mIkeConnectionTimeOut:I

.field private mIkeDhGroup:Ljava/lang/String;

.field private mIkeDpdTimeOut:I

.field private mIkeEapType:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

.field private mIkeEncryptType:I

.field private mIkeIntergrity:I

.field private mIkeLife:I

.field private mIkeNatValue:I

.field private mIkePrfAlgorithm:I

.field private mIkeWindowSize:I

.field private mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

.field private mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

.field private mInterface:Ljava/lang/String;

.field private mobike:Z

.field private name:Ljava/lang/String;

.field private operatorCode:Ljava/lang/String;

.field private ownIdentity:Ljava/lang/String;

.field private ownIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

.field private pcscfv4VendorAttr:I

.field private pcscfv6VendorAttr:I

.field private pduSessionId:I

.field private periodicDpdTimer:I

.field private pfsVal:Z

.field private presharedKey:Ljava/lang/String;

.field private remoteIdentity:Ljava/lang/String;

.field private remoteIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

.field private simId:I

.field private state:Lcom/sec/erisclient/IPSecConnectionState;

.field private subnetType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field private tunnelType:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

.field private userAuth:Z

.field private virtualAdapterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mBypassCaList:Ljava/util/ArrayList;

    .line 90
    const-string v0, "IPSecConnection"

    const-string v1, "IPSecConnection()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z

    .line 93
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    .line 94
    iput-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bEapOnlyAuth:Z

    .line 95
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 96
    iput-object v3, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bHttpCertLookup:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->enableDeviceIdentity:Z

    .line 99
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->enableN1Mode:Z

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/erisclient/IPSecConnection;->pduSessionId:I

    .line 101
    iput v1, p0, Lcom/sec/erisclient/IPSecConnection;->ikeDscp:I

    .line 102
    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    iput-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    .line 103
    iput v1, p0, Lcom/sec/erisclient/IPSecConnection;->simId:I

    .line 104
    const-string v1, "CN=epdg-ltelab.epc.att.net,OU=lte-lab-sha2Cert,O=AT&T Services\\, Inc.,L=Southfield,ST=Michigan,C=US"

    const-string v2, "210356fc173989c79980196eba33484b"

    invoke-virtual {p0, v1, v2}, Lcom/sec/erisclient/IPSecConnection;->addBypassCa(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operatorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "val"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    .line 394
    :goto_0
    return-void
.end method

.method private verifyCaCert(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 7
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "alias"    # Ljava/lang/String;

    .line 352
    const-string v0, "..."

    const/4 v1, 0x0

    .line 353
    .local v1, "certMan":Lcom/sec/erisclient/TrustedCertificateManager;
    const/4 v2, 0x0

    .line 354
    .local v2, "bCaCertVerified":Z
    const/4 v3, 0x0

    .line 356
    .local v3, "rootCaCert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Lcom/sec/erisclient/TrustedCertificateManager;->getInstance()Lcom/sec/erisclient/TrustedCertificateManager;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/sec/erisclient/TrustedCertificateManager;->load()Lcom/sec/erisclient/TrustedCertificateManager;

    .line 358
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 359
    invoke-virtual {v1, p2}, Lcom/sec/erisclient/TrustedCertificateManager;->getCACertificateFromAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 360
    const-string v4, "IPSecConnection"

    if-eqz v3, :cond_0

    .line 363
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCaCertWithVerifying(): using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 366
    const/4 v2, 0x1

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCaCertWithVerifying(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is verified"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/cert/CertificateException;
    goto :goto_0

    .line 375
    :catch_1
    move-exception v0

    .line 376
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/SignatureException;
    goto :goto_0

    .line 373
    :catch_2
    move-exception v0

    .line 374
    .local v0, "e":Ljava/security/NoSuchProviderException;
    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    goto :goto_0

    .line 371
    :catch_3
    move-exception v0

    .line 372
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 369
    :catch_4
    move-exception v0

    .line 370
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 379
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :goto_0
    goto :goto_1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCaCertWithVerifying(): Can\'t get root CA cert with alias: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public addBypassCa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dn"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;

    .line 919
    new-instance v0, Lcom/sec/erisclient/IPSecConnection$BypassCa;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/erisclient/IPSecConnection$BypassCa;-><init>(Lcom/sec/erisclient/IPSecConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .local v0, "bypassCa":Lcom/sec/erisclient/IPSecConnection$BypassCa;
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mBypassCaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    return-void
.end method

.method public addGroup(Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;)V
    .locals 2
    .param p1, "mIkeDhGroup"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    .line 480
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 483
    :cond_0
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 535
    :pswitch_0
    const-string v0, "modp768-modp1024-modp1536-modp2048-modp3072-modp4096-modp6144-modp8192-ecp256-ecp384-ecp521-modp1024s160-modp2048s224-ecp192-ecp224"

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 536
    goto/16 :goto_0

    .line 532
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp224"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 533
    goto/16 :goto_0

    .line 529
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 530
    goto/16 :goto_0

    .line 526
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp2048s256"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 527
    goto/16 :goto_0

    .line 523
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp2048s224"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 524
    goto/16 :goto_0

    .line 520
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp1024s160"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 521
    goto/16 :goto_0

    .line 517
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp521"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 518
    goto/16 :goto_0

    .line 514
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp384"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 515
    goto/16 :goto_0

    .line 510
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp256"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 511
    goto/16 :goto_0

    .line 506
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp8192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 507
    goto/16 :goto_0

    .line 503
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp6144"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 504
    goto/16 :goto_0

    .line 500
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp4096"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 501
    goto :goto_0

    .line 497
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp3072"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 498
    goto :goto_0

    .line 494
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp2048"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 495
    goto :goto_0

    .line 491
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp1536"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 492
    goto :goto_0

    .line 488
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp1024"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 489
    goto :goto_0

    .line 485
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp768"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    .line 486
    nop

    .line 540
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addIPsecEncryption(Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;)V
    .locals 3
    .param p1, "encryptVal"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 247
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:I

    .line 248
    return-void
.end method

.method public addIPsecGroup(Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 263
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 266
    :cond_0
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 319
    :pswitch_0
    const-string v0, "modp768-modp1024-modp1536-modp2048-modp3072-modp4096-modp6144-modp8192-ecp256-ecp384-ecp521-modp1024s160-modp2048s224-ecp192-ecp224"

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 320
    goto/16 :goto_0

    .line 316
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IPSEC_GROUP_ANY_OR_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 317
    goto/16 :goto_0

    .line 313
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp224"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 314
    goto/16 :goto_0

    .line 310
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 311
    goto/16 :goto_0

    .line 307
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp2048s256"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 308
    goto/16 :goto_0

    .line 304
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp2048s224"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 305
    goto/16 :goto_0

    .line 301
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp1024s160"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 302
    goto/16 :goto_0

    .line 298
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp521"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 299
    goto/16 :goto_0

    .line 295
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp384"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 296
    goto/16 :goto_0

    .line 292
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecp256"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 293
    goto/16 :goto_0

    .line 289
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp8192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 290
    goto/16 :goto_0

    .line 286
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp6144"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 287
    goto/16 :goto_0

    .line 283
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp4096"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 284
    goto :goto_0

    .line 280
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp3072"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 281
    goto :goto_0

    .line 277
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp2048"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 278
    goto :goto_0

    .line 274
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp1536"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 275
    goto :goto_0

    .line 271
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp1024"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 272
    goto :goto_0

    .line 268
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modp768"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    .line 269
    nop

    .line 324
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addIPsecIntegrity(Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;)V
    .locals 3
    .param p1, "integrityval"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 255
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:I

    .line 256
    return-void
.end method

.method public addIkeEncryption(Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;)V
    .locals 3
    .param p1, "mIkeEncryptType"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    .line 471
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:I

    .line 472
    return-void
.end method

.method public addIkeIntegrity(Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;)V
    .locals 3
    .param p1, "mIkeIntergrity"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 463
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:I

    .line 464
    return-void
.end method

.method public addIkePrfAlgo(Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;)V
    .locals 3
    .param p1, "mIkePrfAlgorithm"    # Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 551
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkePrfAlgorithm:I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkePrfAlgorithm:I

    .line 552
    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 731
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public declared-synchronized getConnID()I
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 114
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 579
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    return v0
.end method

.method public getDeviceImei()Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->deviceImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceImeiSV()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->deviceImeiSV:Ljava/lang/String;

    return-object v0
.end method

.method public getDpdTimeout()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    return v0
.end method

.method public getEapOnlyAuthentication()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bEapOnlyAuth:Z

    return v0
.end method

.method public getEnableDeviceIdentity()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->enableDeviceIdentity:Z

    return v0
.end method

.method public getFastReauthencation()Z
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bFastReauth:Z

    return v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalDnsConfiguration()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->hostAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAuthentication()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public getHttpCertLookupSupported()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bHttpCertLookup:Z

    return v0
.end method

.method public getIPsecAntiReplay()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    return v0
.end method

.method public getIPsecEncryption()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:I

    return v0
.end method

.method public getIPsecGroup()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getIPsecIntegrity()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:I

    return v0
.end method

.method public getIPsecLife()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    return v0
.end method

.method public getIPsecLifeType()Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public getIkeEncryption()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:I

    return v0
.end method

.method public getIkeIntegrity()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:I

    return v0
.end method

.method public getIkeLife()I
    .locals 1

    .line 563
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    return v0
.end method

.method public getIkePrfAlgo()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkePrfAlgorithm:I

    return v0
.end method

.method public getIkeVersion()Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    return-object v0
.end method

.method public getIkeWindowSize()I
    .locals 1

    .line 571
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .locals 1

    .line 647
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    return v0
.end method

.method public getImeiVendorAttrVal()[B
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMobike()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    return v0
.end method

.method public getN1Mode()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->enableN1Mode:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNattKeepaliveTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    return v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentityType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    return v0
.end method

.method public getPduSessionId()I
    .locals 1

    .line 687
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pduSessionId:I

    return v0
.end method

.method public getPerfectForwardSecrecy()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    return v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 755
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->simId:I

    return v0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentityType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getRequestedRacIPv4Address()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedRacIPv6Address()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/sec/erisclient/IPSecConnectionState;
    .locals 3

    monitor-enter p0

    .line 904
    :try_start_0
    const-string v0, "IPSecConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 903
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubnetType()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getTunnelMode()Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    return-object v0
.end method

.method public getUserAuthentication()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    return v0
.end method

.method public getVirtualAdapterConfiguration()Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public isBypassCa(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mBypassCaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/erisclient/IPSecConnection$BypassCa;

    .line 925
    .local v1, "ca":Lcom/sec/erisclient/IPSecConnection$BypassCa;
    invoke-static {v1}, Lcom/sec/erisclient/IPSecConnection$BypassCa;->access$000(Lcom/sec/erisclient/IPSecConnection$BypassCa;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    invoke-static {v1}, Lcom/sec/erisclient/IPSecConnection$BypassCa;->access$100(Lcom/sec/erisclient/IPSecConnection$BypassCa;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    const/4 v0, 0x1

    return v0

    .line 929
    .end local v1    # "ca":Lcom/sec/erisclient/IPSecConnection$BypassCa;
    :cond_0
    goto :goto_0

    .line 930
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isCaCertOk()Z
    .locals 1

    monitor-enter p0

    .line 451
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 451
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 118
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaCertWithVerifying(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "alias":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->isBypassCa(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const-string v2, "IPSecConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CA bypassed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return v1

    .line 404
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    :cond_0
    :try_start_1
    const-string v2, "TEL"

    iget-object v3, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 406
    const-string v2, "system:facacbc6.0"

    invoke-direct {p0, p1, v2}, Lcom/sec/erisclient/IPSecConnection;->verifyCaCert(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    iput-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    goto :goto_0

    .line 409
    :cond_1
    const-string v2, "system:c90bc37d.0"

    invoke-direct {p0, p1, v2}, Lcom/sec/erisclient/IPSecConnection;->verifyCaCert(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    iput-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 413
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    if-eqz v1, :cond_3

    .line 414
    invoke-direct {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 416
    :cond_3
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 418
    :cond_4
    :try_start_2
    const-string v1, "ATT"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "XFA"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_4

    .line 422
    :cond_5
    const-string v1, "TMB"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "XAA"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "TMK"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_3

    .line 426
    :cond_6
    const-string v1, "AUT"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ZVV"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ZTO"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 430
    :cond_7
    const-string v1, "VDF"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "PHN"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 433
    :cond_8
    const-string v1, "VDS"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 434
    const-string v1, "system:00673b5b.0"

    move-object v0, v1

    goto :goto_5

    .line 436
    :cond_9
    const-string v1, "DIGI"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    const-string v1, "system:60afe812.0"

    move-object v0, v1

    goto :goto_5

    .line 439
    :cond_a
    const-string v1, "KDI"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "DNA"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 440
    :cond_b
    const-string v1, "system:399e7759.0"

    move-object v0, v1

    goto :goto_5

    .line 431
    :cond_c
    :goto_1
    const-string v1, "system:3ad48a91.0"

    move-object v0, v1

    goto :goto_5

    .line 428
    :cond_d
    :goto_2
    const-string v1, "system:bc3f2570.0"

    move-object v0, v1

    goto :goto_5

    .line 424
    :cond_e
    :goto_3
    const-string v1, "system:3e7271e8.0"

    move-object v0, v1

    goto :goto_5

    .line 420
    :cond_f
    :goto_4
    const-string v1, "system:facacbc6.0"

    move-object v0, v1

    .line 443
    :cond_10
    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/sec/erisclient/IPSecConnection;->verifyCaCert(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 444
    if-eqz v1, :cond_11

    .line 445
    invoke-direct {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 447
    :cond_11
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 396
    .end local v0    # "alias":Ljava/lang/String;
    .end local p1    # "caCert":Ljava/security/cert/X509Certificate;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConnID(I)V
    .locals 0
    .param p1, "val"    # I

    monitor-enter p0

    .line 110
    :try_start_0
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    .end local p1    # "val":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .line 575
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    .line 576
    return-void
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 0
    .param p1, "val"    # Z

    monitor-enter p0

    .line 122
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    .end local p1    # "val":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDeviceImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceImei"    # Ljava/lang/String;

    .line 667
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->deviceImei:Ljava/lang/String;

    .line 668
    return-void
.end method

.method public setDeviceImeiSV(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceImeiSV"    # Ljava/lang/String;

    .line 675
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->deviceImeiSV:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public setDpdTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .line 583
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    .line 584
    return-void
.end method

.method public setEapMethod(Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;)V
    .locals 0
    .param p1, "eaptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 203
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 204
    return-void
.end method

.method public setEapOnlyAuthentication(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .line 707
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->bEapOnlyAuth:Z

    .line 708
    return-void
.end method

.method public setEnableDeviceIdentity(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .line 655
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->enableDeviceIdentity:Z

    .line 656
    return-void
.end method

.method public setFastReauthencation(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .line 699
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->bFastReauth:Z

    .line 700
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "gateway"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setGlobalDnsConfiguration(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    .line 232
    return-void
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostAddress"    # Ljava/lang/String;

    .line 747
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->hostAddress:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public setHostAuthentication(Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;)V
    .locals 0
    .param p1, "authType"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 215
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 216
    return-void
.end method

.method public setHttpCertLookupSupported(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .line 715
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->bHttpCertLookup:Z

    .line 716
    return-void
.end method

.method public setIPsecAntiReplay(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 331
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    .line 332
    return-void
.end method

.method public setIPsecLife(Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0
    .param p1, "ipsecLifeTimeType"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .param p2, "ipsecLifeTimeVal"    # I

    .line 339
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    .line 340
    iput p2, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    .line 341
    return-void
.end method

.method public setIkeDscp(I)V
    .locals 0
    .param p1, "ikeDscp"    # I

    .line 695
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->ikeDscp:I

    .line 696
    return-void
.end method

.method public setIkeLife(I)V
    .locals 0
    .param p1, "val"    # I

    .line 559
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    .line 560
    return-void
.end method

.method public setIkePrfAlgo(Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;)V
    .locals 3
    .param p1, "mIkePrfAlgorithm"    # Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 547
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkePrfAlgorithm:I

    invoke-virtual {p1}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkePrfAlgorithm:I

    .line 548
    return-void
.end method

.method public setIkeVersion(Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;)V
    .locals 0
    .param p1, "mIkeversion"    # Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    .line 455
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    .line 456
    return-void
.end method

.method public setIkeWindowSize(I)V
    .locals 0
    .param p1, "val"    # I

    .line 567
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    .line 568
    return-void
.end method

.method public setImeiVendorAttr(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "val"    # [B

    .line 641
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    .line 642
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    .line 643
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    .line 644
    return-void
.end method

.method public setMobike(Z)V
    .locals 0
    .param p1, "mobike"    # Z

    .line 739
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    .line 740
    return-void
.end method

.method public setN1Mode(Z)V
    .locals 0
    .param p1, "enableN1Mode"    # Z

    .line 683
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->enableN1Mode:Z

    .line 684
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setNattKeepaliveTimeout(I)V
    .locals 0
    .param p1, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    .line 593
    return-void
.end method

.method public declared-synchronized setOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    monitor-enter p0

    .line 763
    :try_start_0
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    monitor-exit p0

    return-void

    .line 762
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    .end local p1    # "operator":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOwnIdentity(Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;)V
    .locals 0
    .param p1, "ownIdentityType"    # Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .param p2, "ownIdentity"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    .line 172
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setPcscfv4VendorAttr(I)V
    .locals 0
    .param p1, "val"    # I

    .line 625
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    .line 626
    return-void
.end method

.method public setPcscfv6VendorAttr(I)V
    .locals 0
    .param p1, "val"    # I

    .line 633
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    .line 634
    return-void
.end method

.method public setPduSessionId(I)V
    .locals 0
    .param p1, "pduSessionId"    # I

    .line 691
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pduSessionId:I

    .line 692
    return-void
.end method

.method public setPerfectForwardSecrecy(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    .line 208
    return-void
.end method

.method public setPeriodicDpdTimer(I)V
    .locals 0
    .param p1, "periodicDpdTimer"    # I

    .line 723
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    .line 724
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "simId"    # I

    .line 759
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->simId:I

    .line 760
    return-void
.end method

.method public setPreSharedKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setRemoteIdentity(Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteIdentityType"    # Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    .line 186
    return-void
.end method

.method public setRequestedRacIPv4Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 609
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public setRequestedRacIPv6Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 617
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    .line 618
    return-void
.end method

.method protected declared-synchronized setState(Lcom/sec/erisclient/IPSecConnectionState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/erisclient/IPSecConnectionState;

    monitor-enter p0

    .line 899
    :try_start_0
    const-string v0, "IPSecConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    monitor-exit p0

    return-void

    .line 898
    .end local p0    # "this":Lcom/sec/erisclient/IPSecConnection;
    .end local p1    # "state":Lcom/sec/erisclient/IPSecConnectionState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSubnetType(Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;)V
    .locals 0
    .param p1, "subnetType"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 163
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 164
    return-void
.end method

.method public setTunnelMode(Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;)V
    .locals 0
    .param p1, "tunnelType"    # Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    .line 239
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    .line 240
    return-void
.end method

.method public setUserAuthentication(Z)V
    .locals 0
    .param p1, "userAuth"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    .line 156
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setVirtualAdapterConfiguration(Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;)V
    .locals 0
    .param p1, "val"    # Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 601
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 602
    return-void
.end method

.method public setVirtualAdapterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 830
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 832
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "IPSecConnection"

    const-string v2, "toJson()"

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 834
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    const-string v2, "virtualAdapterName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    const-string v2, "gateway"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    const-string v2, "userAuth"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 837
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    const-string v2, "interface"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    const-string v2, "presharedKey"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    const-string v2, "globalDNSConfig"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 840
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    const-string v2, "antiReplay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 841
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    const-string v2, ""

    const/4 v3, 0x2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v4, "caCertData"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    const-string v4, "ipv4HandoverAddr"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    const-string v4, "ipv6HandoverAddr"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->operatorCode:Ljava/lang/String;

    const-string v4, "operatorCode"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    const-string v4, "pcscfv4VendorAttr"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 846
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    const-string v4, "pcscfv6VendorAttr"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 847
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    const-string v4, "ApnSetting.mMobikeval"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->ordinal()I

    move-result v1

    :goto_1
    const-string v5, "ApnSetting.mImei"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 849
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    const-string v5, "imeiVendorAttrType"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 850
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v1, "imeiVendorAttrVal"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->enableDeviceIdentity:Z

    const-string v2, "enableDeviceIdentity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 852
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->deviceImei:Ljava/lang/String;

    const-string v2, "deviceImei"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->deviceImeiSV:Ljava/lang/String;

    const-string v2, "deviceImeiSV"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bFastReauth:Z

    const-string v2, "bFastReauth"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 855
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->hostAddress:Ljava/lang/String;

    const-string v2, "hostAddress"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bEapOnlyAuth:Z

    const-string v2, "bEapOnlyAuth"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 857
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->bHttpCertLookup:Z

    const-string v2, "bHttpCertLookup"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 858
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->simId:I

    const-string v2, "simId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 859
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->enableN1Mode:Z

    const-string v2, "enableN1Mode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 860
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->pduSessionId:I

    const-string v2, "pduSessionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 861
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->ikeDscp:I

    const-string v2, "ikeDscp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 863
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    const-string v2, "ApnSetting.IWlanSettingName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    :goto_3
    const-string v2, "ApnSetting.mOwnUriType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 865
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    const-string v2, "ApnSetting.mIpsecOwnUri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    :goto_4
    const-string v2, "ApnSetting.mRemoteUriType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 867
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    const-string v2, "ApnSetting.mIpsecRemoteUri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    const-string v2, "ApnSetting.mPfsval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 869
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    if-nez v1, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->ordinal()I

    move-result v1

    :goto_5
    const-string v2, "ApnSetting.mIpSecauthType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 870
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    if-nez v1, :cond_6

    move v1, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->ordinal()I

    move-result v1

    :goto_6
    const-string v2, "ApnSetting.mIpSecIpType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 871
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    if-nez v1, :cond_7

    move v1, v4

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->ordinal()I

    move-result v1

    :goto_7
    const-string v2, "ApnSetting.mIkeVirtualAdapterConf"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    const-string v2, "ApnSetting.mPeriodicDpdTimer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 875
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    if-nez v1, :cond_8

    move v1, v4

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;->ordinal()I

    move-result v1

    :goto_8
    const-string v2, "ApnSetting.ipsecsetting.mTunnelMode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 876
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:I

    if-gtz v1, :cond_9

    move v1, v4

    :cond_9
    const-string v2, "ApnSetting.ipsecsetting.mIpSecEncryptionType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 877
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:I

    if-gtz v1, :cond_a

    move v1, v4

    :cond_a
    const-string v2, "ApnSetting.ipsecsetting.mIpSecIntegrityType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 878
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Ljava/lang/String;

    const-string v2, "ApnSetting.ipsecsetting.mIpSecDHGroup"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    if-nez v1, :cond_b

    move v1, v4

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->ordinal()I

    move-result v1

    :goto_9
    const-string v2, "ApnSetting.ipsecsetting.mIpSecLifeTimeType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 880
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    const-string v2, "ApnSetting.ipsecsetting.mIpSecLifeval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 882
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    if-nez v1, :cond_c

    move v1, v4

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->ordinal()I

    move-result v1

    :goto_a
    const-string v2, "ApnSetting.ikesetting.mIkeversion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 883
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:I

    if-gtz v1, :cond_d

    move v1, v4

    :cond_d
    const-string v2, "ApnSetting.ikesetting.mIkeEncryptType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 884
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:I

    if-gtz v1, :cond_e

    move v1, v4

    :cond_e
    const-string v2, "ApnSetting.ikesetting.mIkeIntegrity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 885
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Ljava/lang/String;

    const-string v2, "ApnSetting.ikesetting.mIkeDhGroup"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 886
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkePrfAlgorithm:I

    if-gtz v1, :cond_f

    const/4 v1, -0x1

    :cond_f
    const-string v2, "ApnSetting.ikesetting.mIkePrfAlgorithm"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 887
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    if-nez v1, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->ordinal()I

    move-result v4

    :goto_b
    const-string v1, "ApnSetting.ikesetting.mIkeEapType"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 888
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    const-string v2, "ApnSetting.ikesetting.mIkeLife"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 889
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    const-string v2, "ApnSetting.ikesetting.mIkeWindowSize"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 890
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    const-string v2, "ApnSetting.ikesetting.mIkeDpdTimeOut"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 891
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    const-string v2, "ApnSetting.ikesetting.mIkeConnectionTimeOut"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 892
    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    const-string v2, "ApnSetting.ikesetting.mIkeNatValue"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 894
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
