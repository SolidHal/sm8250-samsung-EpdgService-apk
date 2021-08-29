.class public final Lcom/sec/epdg/EpdgUtils;
.super Ljava/lang/Object;
.source "EpdgUtils.java"


# static fields
.field public static final APN_TABLE_URI:Landroid/net/Uri;

.field private static final CONNECTIVITY_MGR_INSTANCE_NULL:I = -0x2

.field public static final DSDA_DI:Ljava/lang/String; = "DSDA_DI"

.field public static final DSDS_DI:Ljava/lang/String; = "DSDS_DI"

.field public static final DSDS_SI_DDS:Ljava/lang/String; = "DSDS_SI_DDS"

.field private static final NUMBER_PARSING_EXCEPTION:I = -0x3

.field private static final OMC_OUTSIDE_PATH:Ljava/lang/String; = "outside"

.field public static final SIM_APN_URI:Landroid/net/Uri;

.field private static SUB_TAG:Ljava/lang/String; = null

.field private static final WRONG_PROFILE_ID:I = -0x1

.field private static mInstance:Lcom/sec/epdg/EpdgUtils;

.field private static mInstance2:Lcom/sec/epdg/EpdgUtils;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isEpdgConnBlockedOnErrorCode:Z

.field private mContext:Landroid/content/Context;

.field private mIsNeedToResetThrottle:Z

.field private mIsRoamingNotAllowedError:Z

.field private mPhoneId:I

.field private mSubId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private numOfApnsOnEpdg:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "[UTILS]"

    sput-object v0, Lcom/sec/epdg/EpdgUtils;->SUB_TAG:Ljava/lang/String;

    .line 63
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgUtils;->APN_TABLE_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://telephony/carriers/sim_apn_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgUtils;->SIM_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->mIsRoamingNotAllowedError:Z

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/epdg/EpdgUtils;->mIsNeedToResetThrottle:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->isEpdgConnBlockedOnErrorCode:Z

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgUtils;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    .line 79
    iput p1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    .line 80
    iput-object p2, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    .line 83
    return-void
.end method

.method public static createInstance(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/EpdgUtils;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Lcom/sec/epdg/EpdgUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/epdg/EpdgUtils;-><init>(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v0, Lcom/sec/epdg/EpdgUtils;->mInstance:Lcom/sec/epdg/EpdgUtils;

    .line 88
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/epdg/EpdgUtils;-><init>(ILandroid/content/Context;Lcom/sec/epdg/EpdgSubScription;)V

    sput-object v0, Lcom/sec/epdg/EpdgUtils;->mInstance2:Lcom/sec/epdg/EpdgUtils;

    .line 91
    return-object v0
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 1377
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1378
    sput-object v0, Lcom/sec/epdg/EpdgUtils;->mInstance:Lcom/sec/epdg/EpdgUtils;

    goto :goto_0

    .line 1380
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgUtils;->mInstance2:Lcom/sec/epdg/EpdgUtils;

    .line 1382
    :goto_0
    return-void
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 677
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigDualIMS()Ljava/lang/String;
    .locals 4

    .line 143
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPhCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 144
    const-string v0, "DSDS_SI_DDS"

    return-object v0

    .line 147
    :cond_0
    const-string v0, "persist.ril.config.dualims"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "configDualImsProp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    return-object v0

    .line 152
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DUAL_IMS"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "configDualIMS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    const-string v1, "DSDS_SI_DDS"

    .line 157
    :cond_2
    return-object v1
.end method

.method public static getCurrentTime()J
    .locals 2

    .line 1174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEtcPath()Ljava/lang/String;
    .locals 2

    .line 1074
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getNWPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omc_etcpath"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/sec/epdg/EpdgUtils;
    .locals 1
    .param p0, "phoneId"    # I

    .line 96
    if-nez p0, :cond_0

    .line 97
    sget-object v0, Lcom/sec/epdg/EpdgUtils;->mInstance:Lcom/sec/epdg/EpdgUtils;

    return-object v0

    .line 99
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgUtils;->mInstance2:Lcom/sec/epdg/EpdgUtils;

    return-object v0
.end method

.method public static getJsonStringFromMap(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1212
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1214
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1215
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1216
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1217
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1221
    :cond_0
    goto :goto_1

    .line 1219
    :catch_0
    move-exception v1

    .line 1220
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1222
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method public static getMapFromJsonObject(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4
    .param p0, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1228
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1229
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1232
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1233
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v2

    .line 1235
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1236
    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 1238
    :cond_0
    return-object v0
.end method

.method public static final getMobileInterfacePrefix()Ljava/lang/String;
    .locals 2

    .line 649
    const-string v0, "ril.data.intfprefix"

    const-string v1, "rmnet"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNWPath()Ljava/lang/String;
    .locals 2

    .line 1070
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omcnw_path"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkCapabilitiesbyNetworkType(I)I
    .locals 4
    .param p1, "networkType"    # I

    .line 347
    const/16 v0, 0xc

    if-eqz p1, :cond_7

    const/16 v1, 0xf

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    const/16 v3, 0xb

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkCapabilitiesbyNetworkType: Do not handle this type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, -0x1

    return v0

    .line 365
    :cond_0
    return v1

    .line 362
    :cond_1
    return v2

    .line 359
    :cond_2
    return v1

    .line 356
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_5
    const/16 v0, 0x9

    return v0

    .line 371
    :cond_6
    const/16 v0, 0xa

    return v0

    .line 350
    :cond_7
    return v0
.end method

.method public static getOmcVersion()D
    .locals 5

    .line 1087
    const-wide/16 v0, 0x0

    .line 1090
    .local v0, "omcVer":D
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string v4, "0.0"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 1093
    goto :goto_0

    .line 1091
    :catch_0
    move-exception v2

    .line 1092
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1095
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-wide v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    .line 1066
    const-string v0, "persist.sys.omc_path"

    const-string v1, "/system/csc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhCount()I
    .locals 3

    .line 161
    const/4 v0, 0x1

    .line 162
    .local v0, "phoneCount":I
    nop

    .line 163
    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "mSimConfig":Ljava/lang/String;
    const-string v2, "dsds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dsda"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const-string v2, "tsts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const/4 v0, 0x3

    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 169
    :cond_2
    :goto_1
    return v0
.end method

.method private getProfileIDbyNetworkTypeInternal(I)I
    .locals 11
    .param p1, "networkType"    # I

    .line 501
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 502
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v2, "getProfileIDbyNetworkTypeInternal() . MConnMgr instance is null.. returning -2 as profile ID"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v1, -0x2

    return v1

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v2, "getProfileIDbyNetworkTypeInternal() mConnMgr is not null "

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 511
    .local v1, "nwkInfo":Landroid/net/NetworkInfo;
    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 512
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v4, "getProfileIDbyNetworkTypeInternal: Network info is NULL, returning -1 as as profile ID"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return v2

    .line 516
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 518
    .local v3, "networkState":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_5

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    goto/16 :goto_0

    .line 524
    :cond_2
    const/4 v4, 0x0

    .line 525
    .local v4, "lp":Landroid/net/LinkProperties;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    .line 526
    const/4 v5, 0x0

    .local v5, "mIntfName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 527
    .local v6, "numericSubString":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 528
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "mobileIntfPrefix":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 536
    const/4 v2, -0x3

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 537
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    .line 536
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v8

    .line 541
    nop

    .line 546
    iget-object v8, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InterfaceName is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", numericSubString is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    .local v2, "interfaceid":I
    nop

    .line 555
    iget-object v8, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProfileIDbyNetworkType() networkType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " returning profileId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    add-int/lit8 v8, v2, 0x1

    return v8

    .line 551
    .end local v2    # "interfaceid":I
    :catch_0
    move-exception v8

    .line 552
    .local v8, "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v10, "Error!!!, cid is not converted into number, returning -3"

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return v2

    .line 538
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 539
    .local v8, "e":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v9, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v10, "Error!!!, startIndex is bigger than length of mIntfName"

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return v2

    .line 543
    .end local v8    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_3
    iget-object v8, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v9, "Interface name is null. Returning -1 as profile ID"

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return v2

    .line 530
    .end local v7    # "mobileIntfPrefix":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v8, "LinkProperties is null. Returning -1 as profile ID"

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return v2

    .line 520
    .end local v4    # "lp":Landroid/net/LinkProperties;
    .end local v5    # "mIntfName":Ljava/lang/String;
    .end local v6    # "numericSubString":Ljava/lang/String;
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v5, "getProfileIDbyNetworkTypeInternal(); This network is DISCONNECTED or UNKNOWN. returning -1"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return v2
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1180
    .local v1, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1181
    .local v0, "mValue":I
    return v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 1193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1194
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1195
    .local v1, "mValue":I
    return v1
.end method

.method public static getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .line 1199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1200
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "mValue":Ljava/lang/String;
    return-object v1
.end method

.method private static getSprintExtension()Ljava/lang/String;
    .locals 2

    .line 1369
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigReplaceVoiceCallMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubId()I
    .locals 2

    .line 473
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    if-gez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v1, "Subid in EpdgUtils is wrong, get the true one"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgUtils;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    .line 477
    :cond_0
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    return v0
.end method

.method private getSubIdFromSpecifier(Landroid/net/NetworkCapabilities;)I
    .locals 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 481
    if-nez p1, :cond_0

    .line 482
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v2, "getSubIdFromSpecifier() : netCap : null"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, -0x1

    return v0

    .line 485
    :cond_0
    const/4 v0, -0x1

    .line 487
    .local v0, "subId":I
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 488
    .local v1, "specifier":Landroid/net/NetworkSpecifier;
    if-nez v1, :cond_1

    .line 490
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "getSubIdFromSpecifier() : specifier null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/sec/epdg/EpdgUtils;->getSubId()I

    move-result v0

    goto :goto_0

    .line 492
    :cond_1
    instance-of v2, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v2, :cond_2

    .line 493
    move-object v2, v1

    check-cast v2, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v0

    .line 496
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubIdFromSpecifier() : return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return v0
.end method

.method private idiImsiUpdate()Z
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiImsi()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private idiMacInclude()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiMac()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is2gNetwork(I)Z
    .locals 2
    .param p0, "netType"    # I

    .line 617
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 619
    :cond_1
    :goto_0
    return v0
.end method

.method public static is3gNetwork(I)Z
    .locals 1
    .param p0, "netType"    # I

    .line 606
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 611
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isCallingPlusOnly()Z
    .locals 2

    .line 1373
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSprintExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callingplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDSDS_DI()Ljava/lang/Boolean;
    .locals 2

    .line 193
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isDSDS_SI_DDS()Ljava/lang/Boolean;
    .locals 2

    .line 189
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isDualSimModel()Ljava/lang/Boolean;
    .locals 2

    .line 128
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isLocationServiceEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, "locationState":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1253
    goto :goto_0

    .line 1251
    :catch_0
    move-exception v1

    .line 1252
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[EPDGUTILS]"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isOutsideOmcCode()Z
    .locals 2

    .line 1078
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getNWPath()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "omcNwPath":Ljava/lang/String;
    const-string v1, "outside"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    const/4 v1, 0x1

    return v1

    .line 1083
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isUsingDefaultApnForApnType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 922
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v0

    .line 923
    .local v0, "networkType":I
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Singtel_SG"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    .local v0, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 175
    .local v5, "network":Landroid/net/Network;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 176
    .local v6, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v6, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0xc

    .line 177
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x4

    .line 178
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 179
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 180
    .local v7, "ni":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_1

    .line 181
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 174
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "nc":Landroid/net/NetworkCapabilities;
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_2
    return v3
.end method

.method public static sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 672
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 673
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "prefValue"    # I

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1187
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1188
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1189
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1190
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "prefValue"    # Ljava/lang/String;

    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1206
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1207
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1208
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1209
    return-void
.end method

.method public static stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 927
    if-nez p0, :cond_0

    .line 928
    const/4 v0, 0x0

    return-object v0

    .line 930
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 931
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 933
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 936
    :cond_2
    return-object p0
.end method


# virtual methods
.method public IsNeedToResetThrottle()Ljava/lang/Boolean;
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->mIsNeedToResetThrottle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsTestSim()Ljava/lang/Boolean;
    .locals 2

    .line 110
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->TestSim:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public caCertificatePath()Ljava/lang/String;
    .locals 5

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/etc/epdg/Certification/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCertiPath()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "certiName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    const-string v1, "ca.crt"

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caCertificatePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public checkAvailableOverLTE(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "isNetworkRoaming"    # Z

    .line 905
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 906
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgUtils;->isUsingDefaultApnForApnType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "data_roaming"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 909
    .local v1, "isDataRoamingEnabled":Z
    :goto_0
    if-eqz p2, :cond_3

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 913
    .end local v1    # "isDataRoamingEnabled":Z
    :cond_2
    return v2

    .line 910
    .restart local v1    # "isDataRoamingEnabled":Z
    :cond_3
    :goto_1
    return v3
.end method

.method public checkFirstApiLevel()Z
    .locals 3

    .line 1274
    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 1275
    const/4 v0, 0x1

    return v0

    .line 1277
    :cond_0
    return v1
.end method

.method public checkRtpLossRateLevel(I)I
    .locals 2
    .param p1, "rtpLossRate"    # I

    .line 1154
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getRtpRtcpLossRatePercent()I

    move-result v0

    .line 1155
    .local v0, "setting_lossrate":I
    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 1156
    if-ge p1, v0, :cond_0

    .line 1157
    return v1

    .line 1158
    :cond_0
    add-int/lit8 v1, v0, 0xa

    if-ge p1, v1, :cond_1

    .line 1159
    const/4 v1, 0x1

    return v1

    .line 1160
    :cond_1
    add-int/lit8 v1, v0, 0x14

    if-ge p1, v1, :cond_2

    .line 1161
    const/4 v1, 0x2

    return v1

    .line 1162
    :cond_2
    add-int/lit8 v1, v0, 0x1e

    if-ge p1, v1, :cond_3

    .line 1163
    const/4 v1, 0x3

    return v1

    .line 1165
    :cond_3
    const/4 v1, 0x4

    return v1

    .line 1168
    :cond_4
    return v1
.end method

.method public convertIpFromInetAddrToInt(Ljava/net/InetAddress;)I
    .locals 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;

    .line 628
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 629
    return v0

    .line 631
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 632
    .local v1, "addrBytes":[B
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 634
    .local v2, "addr":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received IP address is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returning address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 635
    return v2
.end method

.method public declared-synchronized decrementNumOfApnsOnEpdg()V
    .locals 1

    monitor-enter p0

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :cond_0
    monitor-exit p0

    return-void

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findMtuFromTelephonyDB(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    .line 1282
    const/16 v0, 0x578

    .line 1283
    .local v0, "mtu":I
    const/4 v1, 0x0

    .line 1285
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1293
    .local v2, "selection":Ljava/lang/String;
    :try_start_0
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const-string v5, "%\'"

    if-ne v3, v4, :cond_0

    .line 1294
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current1 = 1 and type like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 1296
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1298
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgUtils;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 1304
    if-eqz v1, :cond_2

    .line 1305
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1306
    const-string v3, "mtu"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    .line 1307
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mtu From telephony.DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    if-eqz v0, :cond_1

    const/16 v3, 0x5dc

    if-le v0, v3, :cond_2

    .line 1309
    :cond_1
    const/16 v0, 0x578

    .line 1310
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v4, "set Mtu as default."

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1318
    .end local v2    # "selection":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 1319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1323
    :cond_3
    return v0

    .line 1318
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1314
    :catch_0
    move-exception v2

    .line 1315
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1316
    const/16 v3, 0x578

    .line 1318
    if-eqz v1, :cond_4

    .line 1319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1316
    :cond_4
    return v3

    .line 1318
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_1
    if-eqz v1, :cond_5

    .line 1319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1321
    :cond_5
    throw v2
.end method

.method public getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "epdgApnName"    # Ljava/lang/String;

    .line 227
    const-string v0, "type"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v2, "getApnTypeByName null Apn Type"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v1

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnTypeByName apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "apnTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 238
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and apn = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "selection":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgUtils;->APN_TABLE_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 244
    if-eqz v3, :cond_3

    .line 245
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "types":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 249
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v4    # "types":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 258
    .end local v9    # "selection":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 266
    .local v4, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " apnType: "

    const-string v7, "getApnTypeByName() epdgApnName: "

    if-eqz v5, :cond_7

    .line 267
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/epdg/IWlanApnSetting;

    .line 268
    .local v5, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "apnType":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 271
    .local v9, "typeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 272
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 273
    .local v10, "typeFromTelephony":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 274
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-object v8

    .line 278
    .end local v10    # "typeFromTelephony":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 280
    .end local v5    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v8    # "apnType":Ljava/lang/String;
    .end local v9    # "typeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    goto :goto_0

    .line 281
    :cond_7
    iget-object v5, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v8, "getApnTypeByName() : no apn type matched. check it with remoteuri."

    invoke-static {v5, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 283
    .local v5, "remoteUriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 284
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/epdg/IWlanApnSetting;

    .line 285
    .local v8, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v8}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "remoteuri":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 287
    invoke-virtual {v8}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "apnTypeByRemoteuri":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v1

    .line 292
    .end local v1    # "apnTypeByRemoteuri":Ljava/lang/String;
    .end local v8    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v9    # "remoteuri":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 293
    :cond_9
    iget-object v6, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApnTypeByName() failed for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-object v1

    .line 258
    .end local v0    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v4    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v5    # "remoteUriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    nop

    .line 258
    if-eqz v3, :cond_a

    .line 259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_a
    return-object v1

    .line 258
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_3
    if-eqz v3, :cond_b

    .line 259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_b
    throw v0
.end method

.method public getApnTypebyNetworkType(I)Ljava/lang/String;
    .locals 4
    .param p1, "networkType"    # I

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "apnType":Ljava/lang/String;
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApnTypebyNetworkType() Invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_0
    const-string v0, "ims"

    .line 329
    goto :goto_0

    .line 333
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const-string v0, "mms"

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "cbs"

    .line 337
    goto :goto_0

    .line 324
    :cond_3
    const-string v0, "default"

    .line 325
    nop

    .line 343
    :goto_0
    return-object v0
.end method

.method public final getEpdgInterfacePrefix()Ljava/lang/String;
    .locals 1

    .line 653
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->IWLAN_INTERFACE_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public getEpdgProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1102
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1103
    .local v2, "values":[Ljava/lang/String;
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    if-ltz v3, :cond_0

    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 1104
    aget-object v0, v2, v3

    .line 1107
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getGid1()Ljava/lang/String;
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1333
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 748
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 749
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeiSV(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 753
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 754
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeiVendorAttributeType()I
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getImeiVendorAttrType()I

    move-result v0

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 9

    .line 1337
    const/4 v0, 0x0

    .line 1338
    .local v0, "imsi":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1339
    .local v1, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 1340
    .local v2, "mccMnc":Ljava/lang/String;
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1341
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->getSubscriberIdForUiccAppType(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1342
    :cond_0
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    .line 1343
    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    const-string v4, "RJIL_IN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    .line 1344
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ATC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    .line 1345
    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->IsTestSim()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    .line 1346
    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1363
    :cond_1
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1348
    :cond_2
    :goto_0
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "impi":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsi: impi is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1352
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1353
    .local v4, "index":I
    if-lez v4, :cond_3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1354
    :cond_3
    iget-object v5, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImsi: returning imsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v5, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/sec/epdg/EpdgSubScription;->setIsimState(Z)V

    .line 1358
    .end local v4    # "index":I
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1359
    iget v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1360
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4, v6}, Lcom/sec/epdg/EpdgSubScription;->setIsimState(Z)V

    .line 1362
    .end local v3    # "impi":Ljava/lang/String;
    :cond_5
    nop

    .line 1365
    :goto_1
    return-object v0
.end method

.method public declared-synchronized getIsVideoEnabled()Z
    .locals 1

    monitor-enter p0

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isVideoEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 864
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsVoLteEnabled()Z
    .locals 1

    monitor-enter p0

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isVolteEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 856
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsVoWifiEnabled()Z
    .locals 1

    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 860
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getIwlanInterfaceName()Ljava/lang/String;
    .locals 1

    .line 657
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants;->WIFI_INTERFACE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getIwlanInterfaceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "cid"    # I

    .line 682
    const/4 v0, 0x0

    .line 684
    .local v0, "iwlanIfName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgUtils;->getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIwlanInterfaceName(): returning iwlanIfName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-object v0
.end method

.method public getMobileInterfaceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "cid"    # I

    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, "mobileIfName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileInterfaceName(): returning mobileIfName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 12
    .param p1, "networkType"    # I

    .line 438
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 439
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 440
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "getNetworkForType() . mConnMgr instance is null.. returning NULL"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-object v1

    .line 444
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkCapabilitiesbyNetworkType(I)I

    move-result v2

    .line 445
    .local v2, "netCap":I
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 446
    .local v3, "networks":[Landroid/net/Network;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 447
    .local v6, "network":Landroid/net/Network;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 448
    .local v7, "networkCap":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgUtils;->getSubIdFromSpecifier(Landroid/net/NetworkCapabilities;)I

    move-result v8

    .line 450
    .local v8, "subIdFromSpecifier":I
    iget-object v9, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getNetworkForType: subIdFromSpecifier: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgUtils;->getSubId()I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 452
    invoke-virtual {v7, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 453
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkForType: returning Network for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-object v6

    .line 446
    .end local v6    # "network":Landroid/net/Network;
    .end local v7    # "networkCap":Landroid/net/NetworkCapabilities;
    .end local v8    # "subIdFromSpecifier":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 458
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v5, "getNetworkForType: returning null"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-object v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 6
    .param p1, "networkType"    # I

    .line 422
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 423
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "getNetworkInfo() . mConnMgr instance is null.. returning NULL"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-object v1

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v2

    .line 429
    .local v2, "network":Landroid/net/Network;
    if-eqz v2, :cond_1

    .line 430
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 431
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkInfo: returning networkInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-object v1

    .line 434
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    return-object v1
.end method

.method public getNetworkTypeByApnType(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 298
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkTypeByApnType apnType is null.. returning -1"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return v0

    .line 302
    :cond_0
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_1
    const-string v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    const/16 v0, 0xb

    return v0

    .line 306
    :cond_2
    const-string v1, "cbs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    const/16 v0, 0xc

    return v0

    .line 308
    :cond_3
    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    const/4 v0, 0x2

    return v0

    .line 310
    :cond_4
    const-string v1, "xcap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    const/16 v0, 0x1b

    return v0

    .line 312
    :cond_5
    const-string v1, "emergency"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    const/16 v0, 0xf

    return v0

    .line 315
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkTypeByApnType  invalid apnType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getPcscfv4VendorAttr()I

    move-result v0

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getPcscfv6VendorAttr()I

    move-result v0

    return v0
.end method

.method public getProfileIDbyNetworkType(I)I
    .locals 6
    .param p1, "networkType"    # I

    .line 561
    const/4 v0, -0x1

    .local v0, "profileId":I
    const/4 v1, -0x1

    .line 563
    .local v1, "internalNetworkType":I
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkTypeInternal(I)I

    move-result v0

    .line 565
    const/4 v2, -0x2

    const/4 v3, -0x3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    iget v5, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 566
    const/16 v5, 0xc

    if-ne p1, v5, :cond_0

    .line 567
    const/4 v1, 0x2

    goto :goto_0

    .line 568
    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 569
    const/16 v1, 0xc

    .line 578
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkTypeInternal(I)I

    move-result v0

    .line 579
    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    return v0

    .line 582
    :cond_2
    :goto_1
    return v4

    .line 570
    :cond_3
    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 571
    sget v2, Lcom/sec/epdg/Constants/EpdgConstants;->ATTACH_APN_ID:I

    return v2

    .line 573
    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "Network type is neither MMS nor CBS for VZW so, returning -1 as profile id"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return v0

    .line 586
    :cond_5
    if-ne v0, v3, :cond_6

    .line 587
    return v4

    .line 588
    :cond_6
    if-ne v0, v2, :cond_7

    .line 589
    return v4

    .line 591
    :cond_7
    return v0
.end method

.method public getProfileIdbyApnType(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 596
    if-nez p1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v1, "getProfileIdbyApnType apnType is null.. returning -1"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v0, -0x1

    return v0

    .line 600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v0

    .line 601
    .local v0, "mNetworkType":I
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    return v1
.end method

.method public getProperHOProperty()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isHandoverAvailable()Z

    move-result v0

    return v0
.end method

.method public getRemoteUriByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "epdgApnType"    # Ljava/lang/String;

    .line 219
    if-nez p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v1, "getRemoteUriByType null Apn Type"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingNotAllowedError()Ljava/lang/Boolean;
    .locals 1

    .line 1026
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->mIsRoamingNotAllowedError:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSubId(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 463
    const/4 v0, -0x1

    .line 464
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 465
    .local v1, "subIdList":[I
    if-eqz v1, :cond_0

    .line 466
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 467
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubId(): subID is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    return v0
.end method

.method public getVoPS(Landroid/telephony/ServiceState;)I
    .locals 5
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 868
    const/4 v0, -0x1

    .line 870
    .local v0, "vops":I
    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getLteImsVoiceAvail"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 871
    .local v1, "md":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 875
    .end local v1    # "md":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 872
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ipsecOwnUri"    # Ljava/lang/String;

    .line 762
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/epdg/EpdgUtils;->idiMacInclude()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isIncludeUeWiFiMac()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 763
    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 764
    .local v0, "offset":I
    if-ltz v0, :cond_3

    .line 766
    const/4 v2, 0x0

    .line 768
    .local v2, "macAddress":Ljava/lang/String;
    :try_start_0
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgUtils;->isIncludeUeWiFiMac()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    invoke-static {p1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getUeWiFiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 771
    :cond_1
    invoke-static {p1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getAPMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 773
    :goto_0
    if-eqz v2, :cond_2

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 775
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, "idi":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rewritten IDi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 777
    return-object v3

    .line 779
    .end local v3    # "idi":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "Could not get AP MAC address"

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "macAddress":Ljava/lang/String;
    goto :goto_1

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error rewriting URI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_1
    goto :goto_2

    .line 785
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v2, "Invalid IDi format"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .end local v0    # "offset":I
    :cond_4
    :goto_2
    return-object p2
.end method

.method public declared-synchronized incrementNumOfApnsOnEpdg()V
    .locals 2

    monitor-enter p0

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant;->MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :cond_0
    monitor-exit p0

    return-void

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public is2GSimCard()Ljava/lang/Boolean;
    .locals 2

    .line 124
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    if-nez v0, :cond_0

    const-string v0, "ril.ICC_TYPE0"

    goto :goto_0

    :cond_0
    const-string v0, "ril.ICC_TYPE1"

    :goto_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isAlwaysOnApn(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 701
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlwaysOnApn(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return v0
.end method

.method public isAttachApn(I)Z
    .locals 4
    .param p1, "rilCid"    # I

    .line 693
    sget v0, Lcom/sec/epdg/Constants/EpdgConstants;->ATTACH_APN_ID:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 694
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAttachApn: Received CID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " returning result as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return v0
.end method

.method public isCallConnected()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsImsCallConnected()Z

    move-result v0

    return v0
.end method

.method public isCallStarted()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getCallStarted()Z

    move-result v0

    return v0
.end method

.method public isConnectedOnWifi()Z
    .locals 9

    .line 381
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 382
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 383
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "isConnectedOnWifi() . mConnMgr instance is null.. returning false"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return v1

    .line 387
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 388
    .local v5, "network":Landroid/net/Network;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 389
    .local v6, "networkCap":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v6}, Lcom/sec/epdg/EpdgUtils;->getSubIdFromSpecifier(Landroid/net/NetworkCapabilities;)I

    move-result v7

    .line 390
    .local v7, "subIdFromSpecifier":I
    if-eqz v6, :cond_2

    .line 391
    invoke-direct {p0}, Lcom/sec/epdg/EpdgUtils;->getSubId()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 392
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xc

    .line 393
    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x4

    .line 394
    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 395
    :cond_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 396
    .local v8, "ni":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_2

    .line 397
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifiConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 387
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "networkCap":Landroid/net/NetworkCapabilities;
    .end local v7    # "subIdFromSpecifier":I
    .end local v8    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_3
    return v1
.end method

.method public isDataRetryEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDifferentSimAndNWOperator(Landroid/content/Context;)Z
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .line 986
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 987
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 988
    iget v2, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 989
    .local v2, "simMccMnc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 990
    .local v3, "simMcc":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/epdg/EpdgUtils;->getSubId()I

    move-result v4

    .line 991
    .local v4, "subId":I
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 993
    .local v5, "operatorMccMnc":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 997
    :cond_0
    iget v6, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 998
    .local v6, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 999
    iget-object v7, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v8, "isDifferentSimAndNWOperator(): sim and nw operator are same"

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return v1

    .line 1001
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1002
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1003
    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/NetworkChangeController;->isPsOnlyReg()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1004
    :cond_3
    if-eqz v6, :cond_4

    .line 1005
    iget-object v7, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "servicestate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_4
    iget-object v7, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDifferentSimAndNWOperator(): nw not registered. voicenettype: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/NetworkChangeController;->getVoiceRat()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " psonly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 1008
    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/NetworkChangeController;->isPsOnlyReg()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1007
    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return v1

    .line 1011
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_6

    .line 1012
    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-virtual {v2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1014
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDifferentSimAndNWOperator(): operatorMcc is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", simMcc is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDifferentSimAndNWOperator(): sim and nw operator are different. isNetworkRoaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v1, 0x1

    return v1

    .line 994
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    :cond_7
    :goto_0
    iget-object v6, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v7, "isDifferentSimAndNWOperator(): mccmnc is null"

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return v1

    .line 1020
    .end local v2    # "simMccMnc":Ljava/lang/String;
    .end local v3    # "simMcc":Ljava/lang/String;
    .end local v4    # "subId":I
    .end local v5    # "operatorMccMnc":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v3, "isDifferentSimAndNWOperator(): tm is null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return v1
.end method

.method public isEntitlementRequired()Z
    .locals 4

    .line 982
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "Telefonica_GB"

    const-string v2, "TelefonicaLAB_GB"

    const-string v3, "Orange_FR"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isFullMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isEpdgConnectionBlocked()Z
    .locals 3

    monitor-enter p0

    .line 1059
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant;->MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->isEpdgConnBlockedOnErrorCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1060
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEpdgNotAvailableRequired(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEpdgNotAvailableRequired apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x0

    .line 884
    .local v0, "ret":Z
    if-nez p1, :cond_0

    .line 885
    const/4 v1, 0x0

    return v1

    .line 888
    :cond_0
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0xc

    if-eqz v1, :cond_2

    .line 889
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    if-eq v3, v1, :cond_1

    .line 890
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 891
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->is1xAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 892
    const/4 v0, 0x1

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    if-eq v3, v1, :cond_3

    const/16 v1, 0x1b

    .line 896
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 897
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 898
    :cond_3
    const/4 v0, 0x1

    .line 901
    :cond_4
    :goto_0
    return v0
.end method

.method public isImsPdnConnectedOverWifi()Z
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncludeUeWiFiMac()Z
    .locals 1

    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public isIwlanLegacyMode()Z
    .locals 2

    .line 1269
    const-string v0, "ro.telephony.iwlan_operation_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "legacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNeededToBlockIkeAuthentication()Ljava/lang/Boolean;
    .locals 2

    .line 115
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ZVV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgUtils;->is2GSimCard()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 119
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public isSupportCpThresholdFuncion()Z
    .locals 7

    .line 952
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v0

    .line 953
    .local v0, "threshold4gRoveIn":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v1

    .line 954
    .local v1, "threshold4gRoveOut":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v2

    .line 955
    .local v2, "threshold3gRoveIn":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v3

    .line 956
    .local v3, "threshold3gRoveOut":I
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v4

    .line 957
    .local v4, "threshold2gRoveIn":I
    iget-object v5, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v5

    .line 959
    .local v5, "threshold2gRoveOut":I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 962
    :cond_1
    :goto_0
    const/4 v6, 0x0

    return v6
.end method

.method public isTmoSASupport()Ljava/lang/Boolean;
    .locals 4

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 105
    .local v1, "bSupport":Ljava/lang/Boolean;
    iget v2, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSubScription;->getPduSessionId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    .end local v1    # "bSupport":Ljava/lang/Boolean;
    .local v0, "bSupport":Ljava/lang/Boolean;
    return-object v0
.end method

.method public isUsingCaCertificate()Ljava/lang/Boolean;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsUsingCerti()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isWfcCallDropNotiEnabled()Z
    .locals 7

    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->CALLDROP_NOTI:Z

    .line 1261
    .local v1, "requiredOperator":Z
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgUtils;->isImsPdnConnectedOverWifi()Z

    move-result v2

    .line 1262
    .local v2, "imsOverWIFI":Z
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->IsVoLteAvailableNetwork()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1263
    .local v3, "volteAvail":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgUtils;->isCallConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    move v0, v4

    .line 1264
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWfcCallDropNotiEnabled() imsOverWIFI :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "volteAvail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    return v0
.end method

.method public isWiFiScanStart()Z
    .locals 2

    .line 968
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v1, "TMobile_DE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorOrangeGlobal()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 969
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 970
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 971
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 972
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 973
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getIsScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 974
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    const/4 v0, 0x1

    return v0

    .line 978
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiSettingOn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .line 642
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 643
    .local v0, "wifion":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    move v1, v2

    .line 644
    .local v1, "isWifion":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiSettingOn() returning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return v1
.end method

.method public declared-synchronized resetIsEpdgConnBlocked()V
    .locals 1

    monitor-enter p0

    .line 1055
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->isEpdgConnBlockedOnErrorCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    .line 1054
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEpdgProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 1111
    :try_start_0
    const-string v0, ""

    .line 1112
    .local v0, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1113
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1116
    const-string v3, ""

    move-object p2, v3

    .line 1119
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :cond_0
    if-eqz v2, :cond_1

    .line 1120
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1123
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    if-ge v3, v4, :cond_3

    .line 1124
    const-string v4, ""

    .line 1125
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 1126
    aget-object v5, v1, v3

    move-object v4, v5

    .line 1128
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1123
    .end local v4    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1131
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1132
    if-eqz v1, :cond_4

    .line 1133
    iget v3, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1138
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEpdgProperty: success phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " property="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " propVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    :try_start_1
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    goto :goto_2

    .line 1142
    :catch_0
    move-exception v3

    .line 1143
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v5, "Exception while setting properties"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_2
    monitor-exit p0

    return-void

    .line 1110
    .end local v0    # "propVal":Ljava/lang/String;
    .end local v1    # "p":[Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsEpdgConnBlocked()V
    .locals 1

    monitor-enter p0

    .line 1051
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgUtils;->isEpdgConnBlockedOnErrorCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1050
    .end local p0    # "this":Lcom/sec/epdg/EpdgUtils;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedToResetThrottle(Z)V
    .locals 0
    .param p1, "reset"    # Z

    .line 1038
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgUtils;->mIsNeedToResetThrottle:Z

    .line 1039
    return-void
.end method

.method public setRoamingNotAllowedError(Z)V
    .locals 0
    .param p1, "received"    # Z

    .line 1030
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgUtils;->mIsRoamingNotAllowedError:Z

    .line 1031
    return-void
.end method

.method public shouldEpdgSupressW2LToRil(ILjava/lang/String;)Z
    .locals 6
    .param p1, "cid"    # I
    .param p2, "callStatus"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    iget-object v1, v1, Lcom/sec/epdg/EpdgSubScription;->VOICECALL_TYPE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 707
    .local v0, "enableVolte":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 709
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x5

    iget v5, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 710
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v4, "sim not ready. block trigger W2L handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return v1

    .line 714
    :cond_1
    iget v4, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorFET()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 715
    return v1

    .line 716
    :cond_2
    iget v4, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    const-string v5, "Hutchison_GB"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 717
    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getIsLteAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getIsVopsSupport()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 718
    invoke-virtual {v4}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 719
    iget-object v2, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v4, "shouldEpdgSupressW2LToRil H3G : Can\'t Trigger HO for IDLE call status when not supported VoPS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return v1

    .line 723
    :cond_3
    iget-object v4, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->getNetworkChangeController()Lcom/sec/epdg/NetworkChangeController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/NetworkChangeController;->getIsCellularAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 724
    return v1

    .line 725
    :cond_4
    if-lez p1, :cond_6

    .line 726
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v4

    .line 728
    .local v4, "profileId":I
    if-lez v4, :cond_6

    .line 729
    if-ne v4, p1, :cond_5

    move v2, v1

    :cond_5
    return v2

    .line 732
    .end local v4    # "profileId":I
    :cond_6
    return v2
.end method

.method public updateHandoverEnableSetting(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1149
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgSubScription;->updateHandoverEnableSetting(Z)V

    .line 1150
    return-void
.end method

.method public updateOwnUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ipsecOwnUri"    # Ljava/lang/String;

    .line 796
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getSimState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sec/epdg/EpdgUtils;->idiImsiUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 803
    :cond_0
    const/4 v0, 0x0

    .local v0, "mcc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 804
    .local v2, "mnc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgUtils;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "imsi":Ljava/lang/String;
    const/4 v4, 0x0

    .line 807
    .local v4, "mOwnUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateOwnUriImsi: imsi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " received ipsecOwnUri is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 810
    if-eqz v3, :cond_8

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 814
    :cond_1
    iget-object v5, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicUserFQDN()Z

    move-result v5

    if-nez v5, :cond_2

    .line 815
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v5, "use User FQDN from epdg app"

    invoke-static {v1, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return-object p2

    .line 819
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "0"

    const/4 v7, 0x6

    if-le v5, v7, :cond_6

    .line 820
    iget v5, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v8, 0x3

    if-eqz v5, :cond_3

    .line 822
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 823
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 825
    :cond_3
    iget v5, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 826
    .local v5, "operator":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    .line 827
    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 828
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 829
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 830
    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 833
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v6, "Operator is not upated or wrong"

    invoke-static {v1, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-object p2

    .line 839
    .end local v5    # "operator":Ljava/lang/String;
    :cond_6
    :goto_0
    move-object v4, p2

    .line 840
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 841
    .local v7, "uriList":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v7, v8

    .line 842
    .local v8, "naiStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, "newOwnUri":Ljava/lang/String;
    const-string v6, "nai.epc.mnc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 844
    .local v9, "uriList1":[Ljava/lang/String;
    aget-object v10, v9, v1

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 845
    iget-object v1, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    const-string v6, "nai.epc.mnc not present"

    invoke-static {v1, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    return-object p2

    .line 849
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v9, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mcc"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".3gppnetwork.org"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 851
    .local v6, "finalOwnUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New Own Uri is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v10, v11}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 852
    return-object v6

    .line 811
    .end local v5    # "newOwnUri":Ljava/lang/String;
    .end local v6    # "finalOwnUri":Ljava/lang/String;
    .end local v7    # "uriList":[Ljava/lang/String;
    .end local v8    # "naiStr":Ljava/lang/String;
    .end local v9    # "uriList1":[Ljava/lang/String;
    :cond_8
    :goto_1
    return-object p2

    .line 797
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "mOwnUri":Ljava/lang/String;
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateOwnUriImsi() SimState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgUtils;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getSimState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ImsiUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-direct {p0}, Lcom/sec/epdg/EpdgUtils;->idiImsiUpdate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-static {v1, v0, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 799
    return-object p2
.end method

.method public updateSubId()V
    .locals 1

    .line 1327
    iget v0, p0, Lcom/sec/epdg/EpdgUtils;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgUtils;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/epdg/EpdgUtils;->mSubId:I

    .line 1328
    return-void
.end method
