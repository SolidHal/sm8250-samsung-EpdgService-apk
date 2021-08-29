.class public Lcom/sec/epdg/Constants/EpdgConstants;
.super Ljava/lang/Object;
.source "EpdgConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    }
.end annotation


# static fields
.field public static ATTACH_APN_ID:I

.field public static DNS_RETRY_THROTTLE_COUNTER:I

.field public static final Gid1Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static IWLAN_INTERFACE_PREFIX:Ljava/lang/String;

.field public static final MccmncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static SIM_SLOT1:I

.field public static SIM_SLOT2:I

.field public static SIM_SLOT_BOTH:I

.field public static final TestSim:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static WIFI_INTERFACE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/Constants/EpdgConstants;->SIM_SLOT1:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/sec/epdg/Constants/EpdgConstants;->SIM_SLOT2:I

    .line 9
    const/4 v1, 0x2

    sput v1, Lcom/sec/epdg/Constants/EpdgConstants;->SIM_SLOT_BOTH:I

    .line 10
    sput v0, Lcom/sec/epdg/Constants/EpdgConstants;->ATTACH_APN_ID:I

    .line 11
    const/4 v0, 0x5

    sput v0, Lcom/sec/epdg/Constants/EpdgConstants;->DNS_RETRY_THROTTLE_COUNTER:I

    .line 12
    const-string v0, "epdg"

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->IWLAN_INTERFACE_PREFIX:Ljava/lang/String;

    .line 13
    const-string v0, "wlan0"

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->WIFI_INTERFACE_NAME:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/sec/epdg/Constants/EpdgConstants$1;

    invoke-direct {v0}, Lcom/sec/epdg/Constants/EpdgConstants$1;-><init>()V

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    .line 263
    new-instance v0, Lcom/sec/epdg/Constants/EpdgConstants$2;

    invoke-direct {v0}, Lcom/sec/epdg/Constants/EpdgConstants$2;-><init>()V

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->Gid1Map:Ljava/util/HashMap;

    .line 270
    new-instance v0, Lcom/sec/epdg/Constants/EpdgConstants$3;

    invoke-direct {v0}, Lcom/sec/epdg/Constants/EpdgConstants$3;-><init>()V

    sput-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->TestSim:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
