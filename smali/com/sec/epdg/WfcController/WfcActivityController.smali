.class public Lcom/sec/epdg/WfcController/WfcActivityController;
.super Ljava/lang/Object;
.source "WfcActivityController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[WfcActivityController]"

.field private static final UNIFIED_ACTIVITY:Ljava/lang/String; = "com.sec.unifiedwfc.LaunchUnifiedActivity"

.field private static final UNIFIED_COMPONENT:Ljava/lang/String; = "com.sec.unifiedwfc"

.field public static final VOWIFI_MENU_ENABLE:Ljava/lang/String; = "vowifi_menu_enable"

.field private static final WFC_COMPONENT:[Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/WfcController/WfcActivityController;


# instance fields
.field private mEnableEpdgForSim1:Z

.field private mEnableEpdgForSim2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "com.sec.unifiedwfc"

    const-string v1, "com.sec.unifiedwfc.LaunchUnifiedActivity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/WfcController/WfcActivityController;->WFC_COMPONENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    .line 21
    iput-boolean v0, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    return-void
.end method

.method public static broadcastEpdgConfigurationIntent(Landroid/content/Context;IZZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "airPlaneModeSupport"    # Z
    .param p3, "roamingSupport"    # Z
    .param p4, "enableEpdg"    # Z

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdg.action.EPDG_CONFIGURATION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "airplane_support"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    const-string v1, "roaming_support"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    const-string v1, "epdg_support"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 248
    return-void
.end method

.method public static deinitialize()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/WfcController/WfcActivityController;->mInstance:Lcom/sec/epdg/WfcController/WfcActivityController;

    .line 252
    return-void
.end method

.method public static getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;
    .locals 1

    .line 28
    sget-object v0, Lcom/sec/epdg/WfcController/WfcActivityController;->mInstance:Lcom/sec/epdg/WfcController/WfcActivityController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/WfcController/WfcActivityController;

    invoke-direct {v0}, Lcom/sec/epdg/WfcController/WfcActivityController;-><init>()V

    sput-object v0, Lcom/sec/epdg/WfcController/WfcActivityController;->mInstance:Lcom/sec/epdg/WfcController/WfcActivityController;

    .line 29
    :cond_0
    sget-object v0, Lcom/sec/epdg/WfcController/WfcActivityController;->mInstance:Lcom/sec/epdg/WfcController/WfcActivityController;

    return-object v0
.end method

.method public static sendUnifiedWfcCallStatusUpdate(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "status"    # I

    .line 220
    const-string v0, "CALL_SUMMARY_STATUS"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 221
    return-void
.end method

.method public static sendUnifiedWfcDeregiBroadcast(Landroid/content/Context;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # I
    .param p2, "dereg_reason"    # I
    .param p3, "phoneId"    # I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set DBsummary for unifiedWFC - Deregi :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dereg_reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[WfcActivityController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    .line 215
    .local v0, "status":I
    invoke-static {p0, v0, p3}, Lcom/sec/epdg/WfcController/WfcActivityController;->setWfcErrorCode(Landroid/content/Context;II)V

    .line 216
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DEREGISTERED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    invoke-static {p0, v1, p3}, Lcom/sec/epdg/WfcController/WfcActivityController;->setWfcSummaryState(Landroid/content/Context;II)V

    .line 217
    return-void
.end method

.method public static sendUnifiedWfcSummaryBroadcast(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "phoneId"    # I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set DBsummary for unifiedWFC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[WfcActivityController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p0, p1, p2}, Lcom/sec/epdg/WfcController/WfcActivityController;->setWfcSummaryState(Landroid/content/Context;II)V

    .line 209
    return-void
.end method

.method public static sendUpdateEdgeNoti(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.unifiedwfc.LAUNCH_UNIFIED_WFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "edge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public static sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 178
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 179
    return-void
.end method

.method public static sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "country"    # Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send update unifiedwfc intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[WfcActivityController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.UPDATE_UNIFIEDWFC_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    if-eqz p4, :cond_0

    .line 189
    const-string v1, "country"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const-string v1, "com.sec.unifiedwfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public static sendUpdateUnifiedWfcEventAndDb(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "DBsummary"    # I

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set DBsummary for unifiedWFC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[WfcActivityController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p0, p4, p1}, Lcom/sec/epdg/WfcController/WfcActivityController;->setWfcSummaryState(Landroid/content/Context;II)V

    .line 203
    return-void
.end method

.method private static setWfcErrorCode(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "val"    # I
    .param p2, "phoneId"    # I

    .line 236
    const-string v0, "wfc_error"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/epdg/WfcController/EpdgState;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 237
    return-void
.end method

.method private static setWfcSummaryState(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "val"    # I
    .param p2, "phoneId"    # I

    .line 232
    const-string v0, "wifi_call_registration"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/epdg/WfcController/EpdgState;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 233
    return-void
.end method


# virtual methods
.method public IsAvaliableWfcActivity(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 33
    const-string v0, "[WfcActivityController]"

    const/4 v1, 0x0

    .line 34
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 36
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.sec.unifiedwfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "appState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 38
    const/4 v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const-string v4, "SPR"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 44
    .end local v3    # "appState":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, "ie":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check to see if target device support Unified VOWIFI: + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v3    # "ie":Ljava/lang/IllegalArgumentException;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsAvaliableWfcActivity() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v1
.end method

.method public declared-synchronized disableVoWiFiMenu(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vowifi_menu_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "prevValue":I
    const/4 v1, 0x0

    .line 147
    .local v1, "value":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    .line 148
    and-int/lit8 v3, v0, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    .line 150
    if-nez p2, :cond_2

    .line 151
    iput-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    goto :goto_2

    .line 153
    .end local p0    # "this":Lcom/sec/epdg/WfcController/WfcActivityController;
    :cond_2
    iput-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    .line 156
    :goto_2
    iget-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    if-eqz v2, :cond_3

    .line 157
    const/4 v1, 0x1

    .line 159
    :cond_3
    iget-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    if-eqz v2, :cond_4

    .line 160
    or-int/lit8 v1, v1, 0x2

    .line 163
    :cond_4
    if-ne v0, v1, :cond_5

    .line 164
    const-string v2, "[WfcActivityController]"

    const-string v3, "No change in value, Skip"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 167
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_6

    .line 169
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_menu_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const-string v2, "[WfcActivityController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableVoWiFiMenu() VOWIFI_MENU_ENABLE: value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    goto :goto_3

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v3, "[WfcActivityController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Put Setting DB fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "prevValue":I
    .end local v1    # "value":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableWfcActivity(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableVoWiFiMenu(Landroid/content/Context;I)V

    .line 76
    iget-boolean v0, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string v1, "com.sec.unifiedwfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "appState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 84
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.unifiedwfc"

    const-string v5, "com.sec.unifiedwfc.LaunchUnifiedActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v1    # "appState":I
    .end local p0    # "this":Lcom/sec/epdg/WfcController/WfcActivityController;
    :cond_1
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "[WfcActivityController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check to see if target device support VOWIFI: + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v1    # "ie":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 73
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableVoWiFiMenu(Landroid/content/Context;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "appAvailabilityChecked"    # Z

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vowifi_menu_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "prevValue":I
    const/4 v1, 0x0

    .line 96
    .local v1, "value":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    .line 97
    and-int/lit8 v3, v0, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v2, v4

    :cond_1
    iput-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    .line 99
    if-nez p3, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string v3, "com.sec.unifiedwfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .local v3, "appState":I
    if-eq v3, v5, :cond_2

    .line 104
    const/4 p3, 0x1

    .line 108
    .end local v3    # "appState":I
    :cond_2
    goto :goto_1

    .line 106
    .end local p0    # "this":Lcom/sec/epdg/WfcController/WfcActivityController;
    :catch_0
    move-exception v3

    .line 107
    .local v3, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "[WfcActivityController]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check to see if target device support VOWIFI: + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_a

    .line 112
    if-nez p2, :cond_4

    .line 113
    iput-boolean p3, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    goto :goto_2

    .line 115
    :cond_4
    iput-boolean p3, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    .line 118
    :goto_2
    iget-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    if-eqz v2, :cond_5

    .line 119
    const/4 v1, 0x1

    .line 121
    :cond_5
    iget-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    if-eqz v2, :cond_6

    .line 122
    or-int/lit8 v1, v1, 0x2

    .line 125
    :cond_6
    if-ne v0, v1, :cond_7

    .line 126
    const-string v2, "[WfcActivityController]"

    const-string v3, "No change in value, Skip"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 130
    :cond_7
    :try_start_3
    iget-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim1:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/epdg/WfcController/WfcActivityController;->mEnableEpdgForSim2:Z

    if-eqz v2, :cond_9

    .line 135
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_menu_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    :cond_9
    const-string v2, "[WfcActivityController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableVoWiFiMenu() phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " VOWIFI_MENU_ENABLE: value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " appAvailabilityChecked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    goto :goto_3

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v3, "[WfcActivityController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Put Setting DB fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_a
    :goto_3
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "prevValue":I
    .end local v1    # "value":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "phoneId":I
    .end local p3    # "appAvailabilityChecked":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableWfcActivity(Landroid/content/Context;IZ)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "vowifiMenuEnable"    # Z

    monitor-enter p0

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "result":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string v2, "com.sec.unifiedwfc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "appState":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 59
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.unifiedwfc"

    const-string v5, "com.sec.unifiedwfc.LaunchUnifiedActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    const/4 v0, 0x1

    .line 65
    .end local v2    # "appState":I
    .end local p0    # "this":Lcom/sec/epdg/WfcController/WfcActivityController;
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v3, "[WfcActivityController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check to see if target device support VOWIFI: + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/epdg/WfcController/WfcActivityController;->enableVoWiFiMenu(Landroid/content/Context;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :cond_1
    monitor-exit p0

    return v0

    .line 53
    .end local v0    # "result":Z
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "phoneId":I
    .end local p3    # "vowifiMenuEnable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getWfcComponent(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 50
    sget-object v0, Lcom/sec/epdg/WfcController/WfcActivityController;->WFC_COMPONENT:[Ljava/lang/String;

    return-object v0
.end method
