.class public Lcom/sec/epdg/IwlanDataService;
.super Landroid/telephony/data/DataService;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;
    }
.end annotation


# static fields
.field private static final DATA_CALL_LIST_CHANGED:I = 0x6

.field private static final DBG:Z = true

.field private static final DEACTIVATE_DATA_ALL_COMPLETE:I = 0x2

.field private static final NOTIFY_CONNECTION_STATE_COMPLETE:I = 0x7

.field private static final REQUEST_DATA_CALL_LIST_COMPLETE:I = 0x5

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field private static final SET_DATA_PROFILE_COMPLETE:I = 0x4

.field private static final SET_INITIAL_ATTACH_APN_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/epdg/IwlanDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IwlanDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/epdg/IwlanDataService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .locals 4
    .param p1, "slotIndex"    # I

    .line 191
    sget-object v0, Lcom/sec/epdg/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iwlan data service created for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/sec/epdg/IwlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Iwlan data service with invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v1

    .line 196
    :cond_0
    new-instance v0, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/epdg/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/sec/epdg/IwlanDataService;ILcom/sec/epdg/IwlanDataService$1;)V

    return-object v0
.end method
