.class public Lcom/sec/epdg/EpdgImsManagerHelper;
.super Ljava/lang/Object;
.source "EpdgImsManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;,
        Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isSimMobilityListenerRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mPhoneId:I

.field private mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

.field private mSimMobilityStatusListener:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "phoneId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->isSimMobilityListenerRegistered:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityStatusListener:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

    .line 234
    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgImsManagerHelper]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 41
    iput-object p3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    .line 42
    iput p4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    .line 43
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/sec/epdg/EpdgImsManagerHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgImsManagerHelper$1;-><init>(Lcom/sec/epdg/EpdgImsManagerHelper;)V

    iget v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-direct {v0, p3, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 54
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgImsManagerHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 27
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/epdg/EpdgImsManagerHelper;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgImsManagerHelper;
    .param p1, "x1"    # Lcom/sec/ims/ImsManager;

    .line 27
    iput-object p1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgImsManagerHelper;)Lcom/sec/epdg/EpdgSubScription;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgImsManagerHelper;

    .line 27
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    return-object v0
.end method


# virtual methods
.method protected checkSimMoStatusAndToggleWfcActivity(Ljava/lang/String;ZZLcom/sec/epdg/handover/EpdgImsSettings;)Z
    .locals 6
    .param p1, "mnoName"    # Ljava/lang/String;
    .param p2, "isEpdgInitialized"    # Z
    .param p3, "isImsReady"    # Z
    .param p4, "imsSettings"    # Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 249
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->isSimMobilityVoiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 251
    return v1

    .line 252
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->enableWfcActivity(Landroid/content/Context;IZ)Z

    move-result v0

    return v0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSimMoStatusAndToggleWfcActivity: mIsEpdgInitialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsImsReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 258
    invoke-virtual {p4}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v0

    .line 259
    .local v0, "isVolteProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    invoke-virtual {p4}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVowifiProvisionedState()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v2

    .line 260
    .local v2, "isVowifiProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    iget-object v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSimMoStatusAndToggleWfcActivity: isVolteProvisioned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isVowifiProvisioned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v2, v3, :cond_2

    .line 265
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 266
    :cond_2
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v0, v3, :cond_3

    .line 270
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableVoWiFiMenu(Landroid/content/Context;I)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->enableWfcActivity(Landroid/content/Context;IZ)Z

    move-result v1

    return v1

    .line 274
    :cond_4
    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 276
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-eq v2, v3, :cond_5

    .line 277
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 279
    :cond_5
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->enableWfcActivity(Landroid/content/Context;IZ)Z

    move-result v1

    return v1

    .line 282
    .end local v0    # "isVolteProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .end local v2    # "isVowifiProvisioned":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :cond_6
    :goto_0
    nop

    .line 285
    return v1

    .line 283
    :cond_7
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->enableWfcActivity(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public deinitialize()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 349
    :cond_0
    return-void
.end method

.method protected getConfigValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 292
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 293
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 294
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 297
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigValues: For field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returning value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v0
.end method

.method protected getMnoNameFromImsProfile()Ljava/lang/String;
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v1, "[IMS Profile] mImsManager is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, ""

    return-object v0

    .line 206
    :cond_0
    const-string v1, ""

    .line 207
    .local v1, "mnoName":Ljava/lang/String;
    iget v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsManager;->getCurrentProfile(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 208
    .local v0, "imsProfiles":[Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_2

    .line 209
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 210
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    .line 212
    goto :goto_1

    .line 209
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find mMnoName on IMS Profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v1
.end method

.method protected getRoamingSupportValueforVolte(ZLjava/lang/String;)Z
    .locals 7
    .param p1, "defval"    # Z
    .param p2, "alwaysOnApn"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "mIMSList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "mIMSProfile":[Lcom/sec/ims/settings/ImsProfile;
    const/4 v2, 0x0

    .line 142
    .local v2, "mPdn":Ljava/lang/String;
    move v3, p1

    .line 144
    .local v3, "isSupportRoamingVolte":Z
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "[IMS Profile] mImsManager is null"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return v3

    .line 149
    :cond_0
    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsManager;->getCurrentProfile(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 154
    .local v5, "mProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v5, :cond_1

    .line 155
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v3

    .line 160
    .end local v5    # "mProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    goto :goto_0

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find isAllowedOnRoaming value on IMS Profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "[IMS Profile] NULL"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_1
    return v3
.end method

.method protected getRtpTimeOutValueFromImsProfile(Ljava/lang/String;)I
    .locals 8
    .param p1, "alwaysOnApn"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "mIMSList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    const/4 v1, 0x0

    .line 107
    .local v1, "mIMSProfile":[Lcom/sec/ims/settings/ImsProfile;
    const/4 v2, 0x0

    .line 108
    .local v2, "mPdn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 110
    .local v3, "mRtpTimeOutValue":I
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "[IMS Profile] mImsManager is null"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return v3

    .line 115
    :cond_0
    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsManager;->getCurrentProfile(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 120
    .local v5, "mProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getRTPTimeout()I

    move-result v3

    .line 126
    .end local v5    # "mProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find RTPTimeout value on IMS Profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_3
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "[IMS Profile] NULL"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_1
    int-to-double v4, v3

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 134
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRtpTimeOutValueFromImsProfile() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v3
.end method

.method public declared-synchronized getSimMobilityStatus()Z
    .locals 5

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "simmobility_status"

    iget v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    .line 227
    .local v0, "simmo":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimMobilityStatus: returning: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    monitor-exit p0

    return v1

    .line 231
    :cond_0
    monitor-exit p0

    return v3

    .line 225
    .end local v0    # "simmo":I
    .end local p0    # "this":Lcom/sec/epdg/EpdgImsManagerHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isImsEmergencyCall()Z
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    iget v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->getCallCount(I)[I

    move-result-object v0

    .line 310
    .local v0, "callsCount":[I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 311
    return v1

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsEmergencyCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    aget v2, v0, v4

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isVolteSupportFromImsProfile(I)Z
    .locals 7
    .param p1, "rat"    # I

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "mIMSList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, "mIMSProfile":[Lcom/sec/ims/settings/ImsProfile;
    const/4 v2, 0x0

    .line 173
    .local v2, "mPdn":Ljava/lang/String;
    const/4 v3, 0x1

    .line 175
    .local v3, "isSupport":Z
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "[IMS Profile] mImsManager is null"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v3

    .line 180
    :cond_0
    iget v5, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsManager;->getCurrentProfile(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_3

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 185
    .local v5, "mProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1

    const-string v6, "ims"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    invoke-static {v5, p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v3

    .line 191
    .end local v5    # "mProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    goto :goto_0

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find hasVolteService value on IMS Profile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v4, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "[IMS Profile] NULL"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_1
    return v3
.end method

.method protected isVolteSupportFromImsService()Z
    .locals 4

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "isSupport":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "mImsManager is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return v0

    .line 323
    :cond_0
    const-string v2, "mmtel"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 324
    const-string v2, "mmtel-video"

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    :cond_1
    const/4 v0, 0x1

    .line 327
    :cond_2
    return v0
.end method

.method protected isVowifiSupportFromImsService()Z
    .locals 4

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "isSupport":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "mImsManager is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v0

    .line 336
    :cond_0
    const-string v2, "mmtel"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 337
    const-string v2, "mmtel-video"

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 338
    const-string v2, "smsip"

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    :cond_1
    const/4 v0, 0x1

    .line 341
    :cond_2
    return v0
.end method

.method public registerSimMobilityStatusListener(Landroid/os/Message;)V
    .locals 4
    .param p1, "completeMessage"    # Landroid/os/Message;

    .line 73
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->isSimMobilityListenerRegistered:Z

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityStatusListener:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

    if-eqz v1, :cond_0

    .line 76
    iget v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 78
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;-><init>(Lcom/sec/epdg/EpdgImsManagerHelper;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityStatusListener:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

    .line 79
    iget-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    iget v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/ims/ImsManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;-><init>(Lcom/sec/epdg/EpdgImsManagerHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProviderHelper;->SIM_MOBILITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->isSimMobilityListenerRegistered:Z

    .line 88
    :cond_3
    return-void
.end method

.method public declared-synchronized setSimMobilityStatus(Z)V
    .locals 4
    .param p1, "simMobility"    # Z

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimMobilityStatus:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "simmobility_status"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 220
    .end local p0    # "this":Lcom/sec/epdg/EpdgImsManagerHelper;
    .end local p1    # "simMobility":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterSimMobilityStatusListener()V
    .locals 4

    .line 91
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->isSimMobilityListenerRegistered:Z

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mImsManager:Lcom/sec/ims/ImsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityStatusListener:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

    if-eqz v2, :cond_0

    .line 93
    iget v3, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mPhoneId:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/ImsManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 94
    iput-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityStatusListener:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityStatusListener;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    iput-object v1, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->mSimMobilityContentObserver:Lcom/sec/epdg/EpdgImsManagerHelper$SimMobilityContentObserver;

    .line 100
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgImsManagerHelper;->isSimMobilityListenerRegistered:Z

    .line 102
    :cond_2
    return-void
.end method
