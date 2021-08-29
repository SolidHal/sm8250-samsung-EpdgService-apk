.class Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
.super Ljava/lang/Object;
.source "IPSecAdapterForEris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapterForEris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectInfo"
.end annotation


# instance fields
.field handoverIpv4addr:Ljava/lang/String;

.field handoverIpv6addr:Ljava/lang/String;

.field operatorName:Ljava/lang/String;

.field pduSessionId:I

.field wlanSetting:Lcom/sec/epdg/IWlanApnSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapterForEris$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$1;

    .line 922
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p1, "x1"    # Lcom/sec/epdg/IWlanApnSetting;

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    .line 922
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getPduSessionId()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setHandoverIpv4Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setHandoverIpv6Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setOperator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p1, "x1"    # I

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setPduSessionId(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    .line 922
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    .line 922
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getHandoverIpv4Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    .line 922
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getHandoverIpv6Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    .line 922
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandoverIpv4Addr()Ljava/lang/String;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->handoverIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method private getHandoverIpv6Addr()Ljava/lang/String;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->handoverIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method private getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    return-object v0
.end method

.method private getOperator()Ljava/lang/String;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method private getPduSessionId()I
    .locals 1

    .line 966
    iget v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->pduSessionId:I

    return v0
.end method

.method private setHandoverIpv4Addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipv4Addr"    # Ljava/lang/String;

    .line 930
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->handoverIpv4addr:Ljava/lang/String;

    .line 931
    return-void
.end method

.method private setHandoverIpv6Addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipv6Addr"    # Ljava/lang/String;

    .line 938
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->handoverIpv6addr:Ljava/lang/String;

    .line 939
    return-void
.end method

.method private setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p1, "inwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;

    .line 954
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    .line 955
    return-void
.end method

.method private setOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    .line 946
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->operatorName:Ljava/lang/String;

    .line 947
    return-void
.end method

.method private setPduSessionId(I)V
    .locals 0
    .param p1, "sessionid"    # I

    .line 962
    iput p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->pduSessionId:I

    .line 963
    return-void
.end method
