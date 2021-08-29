.class public Lcom/sec/epdg/Constants/SubScriptionConstant;
.super Ljava/lang/Object;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;,
        Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;
    }
.end annotation


# static fields
.field public static final CALL_POPUP_TIMER:I = 0x3c

.field public static final CONNECTED:I = 0x1

.field public static final CONTENT_URI_IMSLOGAGENT_DRPT:Landroid/net/Uri;

.field public static final DEFAULT_VALUE:I = -0x1

.field public static final DEREGISTERING:I = 0x3

.field public static final DISABLE_PKT_LOSS_LEVEL:I = 0x64

.field public static final DISCONNECTED:I = 0x0

.field public static final EPDG_AVAILABLE:I = 0x1

.field public static final EPDG_TERMINATED:I = 0x2

.field public static final EPDG_UNAVAILABLE:I = 0x0

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final FORCE_W2L:I = 0x1

.field public static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field public static final HANDOVER_FAIL:I = 0x0

.field public static final HANDOVER_L2W:I = 0x1

.field public static final HANDOVER_OK:I = 0x1

.field public static final HANDOVER_W2L:I = 0x0

.field public static final HO_ALL_PDN:I = 0x1

.field public static final HO_FROM_SM:I = 0x2

.field public static final HO_SINGLE_PDN:I = 0x0

.field public static final HO_TAG:Ljava/lang/String; = "[OH_CRITERIA]"

.field public static IMS_MNO_URI:Landroid/net/Uri; = null

.field public static final IMS_SERVICE:Ljava/lang/String; = "com.sec.imsservice"

.field public static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EpdgSubScription]"

.field public static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EpdgSubScription]"

.field public static final IPSEC_EVT:Ljava/lang/String; = "[IPSEC_EVT]"

.field public static final LTE_VOPS_SUPPORT:I = 0x2

.field public static final MAX_ENTITLMENT_RETRY_COUNT:I = 0x7

.field public static final MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

.field public static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field public static final MAX_RTP_HANDOVER_CNT:I = 0x3

.field public static final MAX_SETUP_FAILURE_COUNT:I = 0x3

.field public static final MSG_EPDG_AVAILABILITY:I = 0x1

.field public static final MSG_EPDG_CALL_RELEASE:I = 0x8

.field public static final MSG_EPDG_DEREGISTER:I = 0x4

.field public static final MSG_EPDG_HANDOVER_RESULT:I = 0x2

.field public static final MSG_EPDG_IPSEC_CONNECTION:I = 0x5

.field public static final MSG_EPDG_IPSEC_DISCONNECTION:I = 0x6

.field public static final MSG_EPDG_REGISTER:I = 0x3

.field public static final MSG_EPDG_SHOW_POPUP:I = 0x7

.field public static final MSG_TERMINATE_EPDG:I = 0x9

.field public static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field public static final NET_TAG:Ljava/lang/String; = "[NETCHANGE]"

.field public static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field public static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field public static final NOT_REGISTERED:I = 0x0

.field public static final OPTI_TAG:Ljava/lang/String; = "[HO_OPTIMIZATION]"

.field public static final REGISTERED:I = 0x1

.field public static final REGISTERING:I = 0x2

.field public static final RTP_HANDIN_RETRY_TIMER:I = 0x78

.field public static final TEPDG_CS_TIMER:I = 0x78

.field public static final UNIFIED_COMPONENT:Ljava/lang/String; = "com.sec.unifiedwfc"

.field public static final VIDEO_DISABLED:I = 0x1

.field public static final VIDEO_ENABLED:I = 0x0

.field public static final VIDEO_SETTING:I = 0x1

.field public static final VIDEO_TYPE_PROPERTY:Ljava/lang/String; = "videocall_type"

.field public static final VOICECALL_TYPE_CS:I = 0x1

.field public static final VOICECALL_TYPE_VOLTE:I = 0x0

.field public static final VOLTE_SETTING:I = 0x0

.field public static final VOWIFI_MDN_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final VOWIFI_ROAMING_PREF_CELLULAR:I = 0x0

.field public static final VOWIFI_ROAMING_PREF_WIFI:I = 0x1

.field public static final VOWIFI_SETTING:I = 0x2

.field public static final W2LHANDOFFAILURE:Ljava/lang/String; = "N/w Issue: W2L handoff failure"

.field public static final WIFI_DISABLED:I = 0x0

.field public static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field public static final WIFI_RSSI_DISABLE:I = -0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-string v0, "content://com.sec.ims.settings/mno"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant;->IMS_MNO_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "content://com.sec.imsservice.log/log/drpt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant;->CONTENT_URI_IMSLOGAGENT_DRPT:Landroid/net/Uri;

    .line 99
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant;->MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
