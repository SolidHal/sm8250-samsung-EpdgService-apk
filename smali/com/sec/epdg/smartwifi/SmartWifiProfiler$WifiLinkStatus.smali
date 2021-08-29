.class final enum Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
.super Ljava/lang/Enum;
.source "SmartWifiProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WifiLinkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

.field public static final enum CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

.field public static final enum CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

.field public static final enum UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 114
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    const-string v1, "UNDETERMINABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    .line 115
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    const-string v1, "CAPTIVE_UNAUTHENTICATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    .line 116
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    const-string v1, "CAPTIVE_AUTHENTICATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    .line 113
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    sget-object v5, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->$VALUES:[Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->mValue:I

    .line 123
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->mText:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 113
    const-class v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;
    .locals 1

    .line 113
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->$VALUES:[Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiProfiler$WifiLinkStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
