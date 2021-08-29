.class public Lcom/sec/epdg/EpdgManagerStubImpl;
.super Ljava/lang/Object;
.source "EpdgManagerStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;
    }
.end annotation


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "com.sec.epdg.PERMISSION"


# instance fields
.field TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mPhoneId:I

.field mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V
    .locals 2
    .param p1, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgManagerStubImpl]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 37
    iput-object p2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    .line 38
    iput p3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    .line 39
    return-void
.end method


# virtual methods
.method public checkEpdgExtraFeature(Ljava/lang/String;)Z
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "checkEpdgExtraFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEnableEpdg()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "WFCSETTINGSMENU"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    goto :goto_0

    :sswitch_1
    const-string v2, "WFCCALLMENU"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "WFCQUICKSETTINGSMENU"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "SIMMO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "SUPPORTAIRPLANE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "SUPPORTROAMING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgImsManagerHelper;->getSimMobilityStatus()Z

    move-result v0

    .line 284
    goto :goto_1

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAirplaneModeSupport()Z

    move-result v1

    if-nez v1, :cond_7

    .line 278
    const/4 v0, 0x1

    goto :goto_1

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getRoamingSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 272
    const/4 v0, 0x1

    goto :goto_1

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWfcQuicksettingMenu()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 266
    const/4 v0, 0x1

    goto :goto_1

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWfcSettingMenu()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    const/4 v0, 0x1

    goto :goto_1

    .line 253
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWfcCallMenu()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    const/4 v0, 0x1

    .line 287
    :cond_7
    :goto_1
    goto :goto_2

    .line 291
    :cond_8
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "checkEpdgFeature : Not ready"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEpdgFeature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x31dcd696 -> :sswitch_5
        -0xfe983ff -> :sswitch_4
        0x4b3f899 -> :sswitch_3
        0x18f6957b -> :sswitch_2
        0x581ddc11 -> :sswitch_1
        0x6284e156 -> :sswitch_0
    .end sparse-switch
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 63
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "connect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, -0x1

    .line 65
    .local v0, "profileId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 66
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x2b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 67
    iget v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v0

    .line 68
    const-string v2, " apnType : "

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 69
    iget-object v4, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect() Unable to get cid for apnType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 71
    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    add-int/lit8 v6, v4, 0x1

    .line 72
    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    add-int/lit8 v0, v4, 0x1

    .line 74
    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect() find SM for apnType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eq v0, v3, :cond_2

    .line 82
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 83
    iget-object v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3, p1}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    iget-object v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HANDOFF]Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 88
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 92
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "disconnect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, -0x1

    .line 94
    .local v0, "profileId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 95
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x2c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 96
    iget v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v0

    .line 97
    const-string v2, " apnType : "

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 98
    iget-object v4, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    add-int/lit8 v6, v4, 0x1

    .line 102
    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    add-int/lit8 v0, v4, 0x1

    .line 104
    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnect() find SM for apnType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eq v0, v3, :cond_2

    .line 111
    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;

    invoke-direct {v4, v0}, Lcom/sec/epdg/DataType/ApnData$ApnDetachRequest;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HANDOFF]Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_2
    const/4 v2, 0x0

    return v2
.end method

.method public enableTestRilAdapter(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .line 123
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "enableTestRilAdapter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->enableTestRilAdapter(Z)V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentImsPdnStatus()I
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "getCurrentImsPdnStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 163
    .local v0, "cid":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 164
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v3, "invalid cid for ims"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v1

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v3, "EpdgService not initialized."

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return v1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v2

    .line 173
    .local v2, "apnState":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " apnState is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 178
    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 179
    return v4

    .line 180
    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 181
    iget v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getImsCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    return v1

    .line 184
    :cond_4
    return v4

    .line 186
    :cond_5
    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 187
    const/4 v1, 0x3

    return v1

    .line 189
    :cond_6
    return v1

    .line 177
    :cond_7
    :goto_0
    return v3
.end method

.method public isDuringHandoverForIMS()Z
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "isDuringHandoverForIMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 138
    .local v0, "cid":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v3, "invalid cid for ims"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getIsEpdgInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v3, "EpdgService not initialized."

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v1

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgSubScription;->getStateMachineByCid(I)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/DataType/IWlanState;->getState()I

    move-result v2

    .line 148
    .local v2, "apnState":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " apnState is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 157
    :cond_2
    return v1

    .line 155
    :cond_3
    :goto_0
    return v3
.end method

.method public isPossibleW2LHOAfterCallEnd()Z
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "isPossibleW2LHOAfterCallEnd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgTimer()Lcom/sec/epdg/EpdgTimers;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "TEPDGLTE timer running, isPossibleW2LHOAfterCallEnd false"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getVoWifiSessionConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "VoWIFI session is connected. isPossibleW2LHOAfterCallEnd false"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v0

    .line 203
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance(I)Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v1

    const-string v2, "ims"

    const-string v3, "idle"

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getDataRat()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 207
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "LTE is not available. But current data rat is LTE. isPossibleW2LHOAfterCallEnd true"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 210
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getIsVoPSEnabled()Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getIsSsacVoiceEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    :cond_3
    const/4 v0, 0x0

    .line 215
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPossibleW2LHOAfterCallEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v0
.end method

.method public mstartHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HANDOFF]startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "apnType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "[HANDOFF]null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v1, -0x1

    return v1

    .line 350
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v1, p1, v2}, Lcom/sec/epdg/EpdgSubScription;->startHandoverLteToWifi(ILcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;)I

    move-result v1

    return v1
.end method

.method public mstartHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HANDOFF]startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "apnType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "[HANDOFF]null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, -0x1

    return v1

    .line 332
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    .line 333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/epdg/Logger/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I

    move-result v1

    return v1
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 129
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "sendEventToStateMachine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgManagerStubImpl$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgManagerStubImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public setEpdgNotAvailableDuringEmergencyCall()Z
    .locals 6

    .line 299
    iget v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorKDDI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "setEpdgNotAvailableDuringEmergencyCall supports only KDDI now "

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return v1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "setEpdgNotAvailableDuringEmergencyCall : "

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    .line 305
    .local v0, "epdgHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgSubScription;->setIsNotRequiredTimer(Z)V

    .line 306
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServiceRunnable;->performOperation()V

    .line 307
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgRunnable()Lcom/sec/epdg/EpdgRunnable;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartWifiProfiler()Lcom/sec/epdg/smartwifi/SmartWifiProfiler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiProfiler;->stopProfiling()V

    .line 309
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getSmartCellularProfiler()Lcom/sec/epdg/smartwifi/SmartCellularProfiler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler;->stopProfiling()V

    .line 310
    iget-object v2, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2, v1}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverEnableSetting(Z)V

    .line 311
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/NetworkChangeController;->getMobileDataReg()I

    move-result v1

    const/16 v2, 0x3ed

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v4, "wait CP attach"

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, "waitCpAttach":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 319
    const-wide/16 v4, 0x3e80

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    .end local v1    # "waitCpAttach":Landroid/os/Message;
    :cond_2
    :goto_0
    return v3
.end method

.method public setReleaseCallBeforeHO(Z)Z
    .locals 3
    .param p1, "setReleaseCall"    # Z

    .line 221
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "setReleaseCallBeforeHO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReleaseCallBeforeHO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->setReleaseCallBeforeHO(Z)V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 54
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "startHandOverLteToWifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManagerStubImpl;->mstartHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 45
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "startHandOverWifiToLte"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManagerStubImpl;->mstartHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public triggerHOAfterReleaseCall()Z
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.epdg.PERMISSION"

    const-string v2, "triggerHOAfterReleaseCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-boolean v0, v0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "call ended. trigger ho."

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/epdg/EpdgSubScription;->waitingForCallend:Z

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/EpdgSubScription;->startHandOverWifiToLte(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "W2L handover failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HANDOFF]"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManagerStubImpl;->TAG:Ljava/lang/String;

    const-string v2, "guardtimer expired.ignoe"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_1
    return v1
.end method
