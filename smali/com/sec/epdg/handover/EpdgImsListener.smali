.class public Lcom/sec/epdg/handover/EpdgImsListener;
.super Ljava/lang/Object;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;,
        Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;,
        Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;,
        Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;,
        Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantAdded;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnCallStarted;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnCallModified;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnCallModifyRequested;,
        Lcom/sec/epdg/handover/EpdgImsListener$OnCallEnded;,
        Lcom/sec/epdg/handover/EpdgImsListener$ImsManagerConnected;,
        Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;
    }
.end annotation


# static fields
.field public static final IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

.field public static final IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

.field private static final STORAGE_DM_DB:I = 0x0

.field private static final STORAGE_SERVICE_SWITCH:I = 0x1

.field private static SUB_TAG:Ljava/lang/String;

.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static mEpdgImsListener2:Lcom/sec/epdg/handover/EpdgImsListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEpdgCallEventListener:Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

.field private mEpdgHandler:Landroid/os/Handler;

.field private mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

.field private mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

.field private mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

.field private final mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private final mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

.field private final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mIpmeStatus:Z

.field private mPhoneId:I

.field private mService:Lcom/sec/ims/volte2/IVolteService;

.field private mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;

.field private final mSettingStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "[EpdgImsListener]"

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->SUB_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$DmConfigTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$DmConfigTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "omadm/./3GPP_IMS/VWF_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 49
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .line 50
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    .line 51
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 52
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mIpmeStatus:Z

    .line 55
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgCallEventListener:Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

    .line 70
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;

    .line 72
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener$1;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    .line 280
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$4;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener$4;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 354
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$5;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener$5;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    .line 86
    iput p3, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    .line 87
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener$2;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingStorageMap:Ljava/util/Map;

    .line 94
    invoke-static {p1, p2, v0, p3, p4}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;ILcom/sec/epdg/interfaces/IEpdgSubScription;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 95
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sec/epdg/handover/EpdgImsCallStatus;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .line 96
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sec/epdg/handover/EpdgImsRegStatus;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    .line 97
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/epdg/handover/EpdgImsListener$1;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgCallEventListener:Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

    .line 98
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;

    .line 99
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->postImsReadyToEpdgService()V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/handover/EpdgImsListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p1, "x1"    # Z

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->setIpmeStatus(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/handover/EpdgImsListener;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p1, "x1"    # Ljava/util/List;

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->initImsSettings(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsRegStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/handover/EpdgImsListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->readSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/handover/EpdgImsListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p1, "x1"    # Z

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->informIpmeStatusChangeToHandoverModule(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/handover/EpdgImsListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 40
    invoke-static {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->getDmSettingWithSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/ims/volte2/IVolteService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;
    .param p1, "x1"    # Lcom/sec/ims/volte2/IVolteService;

    .line 40
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->resetCallList()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->initImsCallStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgCallEventListener:Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

    return-object v0
.end method

.method private static buildUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uriSt"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .line 661
    const-string v0, "simslot"

    .line 662
    .local v0, "SIM_SLOT":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 662
    return-object v1
.end method

.method public static createInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 105
    if-nez p2, :cond_0

    .line 106
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/epdg/handover/EpdgImsListener;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 107
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/epdg/handover/EpdgImsListener;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener2:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 110
    return-object v0
.end method

.method private deInit()V
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    .line 766
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 769
    :cond_0
    return-void
.end method

.method private static getDmSettingWithSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#simslot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1
    .param p0, "phoneId"    # I

    .line 115
    if-nez p0, :cond_0

    .line 116
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener2:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method private informIpmeStatusChangeToHandoverModule(Z)V
    .locals 3
    .param p1, "isExist"    # Z

    .line 625
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_0

    .line 626
    const/16 v0, 0x4e

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->postToEpdgService(ILjava/lang/Object;I)V

    .line 628
    :cond_0
    return-void
.end method

.method private initImsCallStatus()V
    .locals 3

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "callInfos":[Lcom/sec/ims/volte2/data/ImsCallInfo;
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IVolteService;->getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 221
    :cond_0
    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 222
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->initImsCallStatus([Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 223
    return-void
.end method

.method private initImsSettings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->getImsSettings(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->initImsSettings(Ljava/util/HashMap;)V

    .line 211
    return-void
.end method

.method private postImsReadyToEpdgService()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 760
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 761
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 762
    return-void
.end method

.method private postToEpdgService(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 632
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 634
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 636
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 637
    return-void
.end method

.method private readDMSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    .line 697
    invoke-static {p1, v0}, Lcom/sec/epdg/handover/EpdgImsListener;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 696
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 699
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 705
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    .local v1, "val":Ljava/lang/String;
    nop

    .line 707
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_1
    return-object v1

    .line 700
    .end local v1    # "val":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v2, "readDMSettingValue: not found"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    const/4 v1, 0x0

    .line 707
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_3
    return-object v1

    .line 696
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private readServiceSwitchSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 712
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    .line 711
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 714
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 720
    const-string v1, "enabled"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    .local v1, "val":Ljava/lang/String;
    nop

    .line 722
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_1
    return-object v1

    .line 715
    .end local v1    # "val":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v2, "readServiceSwitchSetting: not found"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    const/4 v1, 0x0

    .line 722
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 716
    :cond_3
    return-object v1

    .line 711
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private readSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSettingValue: key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 733
    return-object v1

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 743
    return-object v1

    .line 737
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->readServiceSwitchSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 739
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->readDMSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerCallStatusListener()V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v1, "registerCallStatusListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$3;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener$3;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;)V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    .line 261
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 262
    return-void
.end method

.method private registerIpmeListener()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v1, "registerIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 598
    return-void
.end method

.method private registerRegStatusListener()V
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 348
    return-void
.end method

.method private registerSettingsChangeListener()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->getFields()Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerForSettingChangeEvent(Ljava/util/List;)V

    .line 380
    return-void
.end method

.method private resetCallList()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v1, "resetCallList()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->resetCallList()V

    .line 228
    return-void
.end method

.method private setIpmeStatus(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 611
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIpmeStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mIpmeStatus:Z

    .line 613
    return-void
.end method

.method private unregisterCallStatusListener()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 268
    :try_start_0
    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgCallEventListener:Lcom/sec/epdg/handover/EpdgImsListener$EpdgCallEventListener;

    invoke-interface {v0, v2, v3}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    .line 273
    goto :goto_2

    .line 272
    :goto_1
    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    .line 273
    throw v0

    .line 275
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    .line 278
    :cond_1
    return-void
.end method

.method private unregisterIpmeListener()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v1, "unregisterIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 604
    return-void
.end method

.method private unregisterRegStatusListener()V
    .locals 3

    .line 351
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 352
    return-void
.end method

.method private unregisterSettingsChangeListener()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 384
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 772
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v0, :cond_0

    .line 773
    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->deInit()V

    .line 774
    sput-object v1, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    goto :goto_0

    .line 775
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener2:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v0, :cond_1

    .line 776
    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->deInit()V

    .line 777
    sput-object v1, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener2:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 779
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->deinitialize()V

    .line 780
    return-void
.end method

.method public getCallCount()[I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getE911CallCount()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getE911CallCount()I

    move-result v0

    return v0
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method public getImsManager()Lcom/sec/ims/ImsManager;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 125
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method public getImsSettings(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 687
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->readSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 689
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 692
    :cond_1
    return-object v0
.end method

.method public getIpmeStatus()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mIpmeStatus:Z

    return v0
.end method

.method public getNonE911CallCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method public getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method public getScbmChanged()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getScbmChanged()Z

    move-result v0

    return v0
.end method

.method public getVoWifiSessionConnected()Z
    .locals 4

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 619
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoWifiSessionConnected: CALL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IPME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return v0
.end method

.method public isMmtelFeatureTagPresentOverEpdg()Z
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    const-string v1, "volte"

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 136
    .local v0, "regi":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 137
    const-string v2, "mmtel"

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 139
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener;->TAG:Ljava/lang/String;

    const-string v2, "vowifi --mmtel"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v3

    .line 144
    :cond_0
    return v1

    .line 147
    :cond_1
    return v1

    .line 150
    :cond_2
    return v1
.end method

.method registerForSettingChangeEvent(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 673
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingStorageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 674
    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    goto :goto_1

    .line 676
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 678
    .restart local v2    # "uri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 680
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 681
    :cond_1
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerCallStatusListener()V

    .line 188
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerRegStatusListener()V

    .line 189
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerSettingsChangeListener()V

    .line 192
    :cond_0
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerIpmeListener()V

    .line 195
    :cond_1
    return-void
.end method

.method public setEcbmChanged(Z)V
    .locals 1
    .param p1, "ecbmModeOn"    # Z

    .line 175
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->setEcbmChanged(Z)V

    .line 176
    return-void
.end method

.method public setScbmChanged(Z)V
    .locals 1
    .param p1, "modeStart"    # Z

    .line 179
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->setScbmChanged(Z)V

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 749
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    .local v0, "status":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallCount()[I

    move-result-object v1

    .line 751
    .local v1, "callCount":[I
    if-eqz v1, :cond_0

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Call status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims Reg State is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterListener()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterCallStatusListener()V

    .line 200
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterRegStatusListener()V

    .line 201
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterSettingsChangeListener()V

    .line 204
    :cond_0
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterIpmeListener()V

    .line 207
    :cond_1
    return-void
.end method
