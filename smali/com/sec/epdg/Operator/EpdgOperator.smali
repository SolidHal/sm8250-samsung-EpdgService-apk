.class public Lcom/sec/epdg/Operator/EpdgOperator;
.super Ljava/lang/Object;
.source "EpdgOperator.java"


# static fields
.field private static INDIA_MCC:[Ljava/lang/String;

.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/Operator/EpdgOperator;

.field private static mInstance2:Lcom/sec/epdg/Operator/EpdgOperator;


# instance fields
.field private final MccMncGid1Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMnoName:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "[Operator]"

    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->SUB_TAG:Ljava/lang/String;

    .line 216
    const-string v0, "404"

    const-string v1, "405"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->INDIA_MCC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "default"

    iput-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/sec/epdg/Operator/EpdgOperator$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/Operator/EpdgOperator$1;-><init>(Lcom/sec/epdg/Operator/EpdgOperator;)V

    iput-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->MccMncGid1Map:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/Operator/EpdgOperator;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    .line 28
    iput p1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mPhoneId:I

    .line 29
    iput-object p2, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static createInstance(ILandroid/content/Context;)Lcom/sec/epdg/Operator/EpdgOperator;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance v0, Lcom/sec/epdg/Operator/EpdgOperator;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/Operator/EpdgOperator;-><init>(ILandroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->mInstance:Lcom/sec/epdg/Operator/EpdgOperator;

    .line 35
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/sec/epdg/Operator/EpdgOperator;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/Operator/EpdgOperator;-><init>(ILandroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->mInstance2:Lcom/sec/epdg/Operator/EpdgOperator;

    .line 38
    return-object v0
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 357
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 358
    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->mInstance:Lcom/sec/epdg/Operator/EpdgOperator;

    goto :goto_0

    .line 360
    :cond_0
    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->mInstance2:Lcom/sec/epdg/Operator/EpdgOperator;

    .line 362
    :goto_0
    return-void
.end method

.method private getGid1(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 243
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 244
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;
    .locals 1
    .param p0, "phoneId"    # I

    .line 43
    if-nez p0, :cond_0

    .line 44
    sget-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->mInstance:Lcom/sec/epdg/Operator/EpdgOperator;

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/sec/epdg/Operator/EpdgOperator;->mInstance2:Lcom/sec/epdg/Operator/EpdgOperator;

    return-object v0
.end method

.method private getRilSimOperator()Ljava/lang/String;
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 312
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mPhoneId:I

    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSubId()I
    .locals 5

    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, "subId":I
    iget v1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 235
    .local v1, "subIdList":[I
    if-eqz v1, :cond_0

    .line 236
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 237
    iget-object v2, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubId(): subID is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return v0
.end method


# virtual methods
.method public delayNotifyAuthFailureTillPermanentThrottle()Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorWind()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVideoTron()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public extractOperatorFromImpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "impi"    # Ljava/lang/String;

    .line 316
    const-string v0, "\\d+@ims\\.mnc\\d+\\.mcc\\d+\\.3gppnetwork\\.org"

    .line 320
    .local v0, "impiPattern":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    const-string v2, "IMPI is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    return-object v1

    .line 325
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 326
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 328
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    const-string v4, "IMPI is empty"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, ""

    return-object v3

    .line 333
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    const-string v3, "mcc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    .line 336
    .local v3, "start":I
    const-string v4, "."

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 337
    .local v5, "end":I
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "mccMnc":Ljava/lang/String;
    const-string v7, "mnc"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    .line 340
    .end local v3    # "start":I
    .local v7, "start":I
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 341
    .end local v5    # "end":I
    .local v3, "end":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v6    # "mccMnc":Ljava/lang/String;
    .local v4, "mccMnc":Ljava/lang/String;
    goto :goto_0

    .line 345
    .end local v3    # "end":I
    .end local v4    # "mccMnc":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_2
    const/4 v7, 0x0

    .line 346
    .restart local v7    # "start":I
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 347
    .restart local v3    # "end":I
    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 348
    const/4 v4, 0x5

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mccMnc":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v4    # "mccMnc":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x6

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 353
    .restart local v4    # "mccMnc":Ljava/lang/String;
    :goto_0
    return-object v4
.end method

.method public getMnoName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 11

    .line 259
    invoke-direct {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSubId()I

    move-result v0

    .line 260
    .local v0, "subId":I
    iget-object v1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 261
    .local v1, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "imsi":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "impi":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getGid1(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "gid1":Ljava/lang/String;
    const-string v6, ""

    .line 267
    .local v6, "newMccmnc":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v2, ""

    .line 268
    :cond_0
    if-nez v3, :cond_1

    const-string v3, ""

    .line 269
    :cond_1
    if-nez v5, :cond_2

    const-string v5, ""

    .line 270
    :cond_2
    iget-object v7, p0, Lcom/sec/epdg/Operator/EpdgOperator;->MccMncGid1Map:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    .line 272
    const-string v7, "24007"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 273
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "simSubset":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v8, "671"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 275
    const-string v6, "25050"

    .line 279
    .end local v7    # "simSubset":Ljava/lang/String;
    :cond_3
    const-string v7, "RJIL_IN"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 280
    invoke-virtual {p0, v4}, Lcom/sec/epdg/Operator/EpdgOperator;->extractOperatorFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "operatorFromImpi":Ljava/lang/String;
    move-object v6, v7

    .line 284
    .end local v7    # "operatorFromImpi":Ljava/lang/String;
    :cond_4
    const-string v7, "ro.csc.sales_code"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "ro.csc.omcnw_code"

    invoke-static {v9, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "cscSalesCode":Ljava/lang/String;
    const-string v9, "LRA"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "ACG"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_0

    .line 290
    :cond_5
    const-string v8, "BRI"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->getRilSimOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "APT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 291
    const-string v6, "46605"

    goto :goto_1

    .line 286
    :cond_6
    :goto_0
    const-string v9, "gsm.apn.sim.operator.numeric"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, "mccmncFromProp":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 288
    move-object v6, v9

    .line 290
    .end local v9    # "mccmncFromProp":Ljava/lang/String;
    :cond_7
    nop

    .line 294
    :goto_1
    const-string v8, "208090"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "11FFFFFFFFFFFFFF"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 295
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 296
    invoke-virtual {p0, v4}, Lcom/sec/epdg/Operator/EpdgOperator;->extractOperatorFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "operatorFromImpi":Ljava/lang/String;
    move-object v6, v8

    .line 298
    .end local v8    # "operatorFromImpi":Ljava/lang/String;
    goto :goto_2

    .line 299
    :cond_8
    const-string v6, "313390"

    .line 303
    :cond_9
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 304
    iget-object v8, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimOperator(): mccmnc gets changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object v2, v6

    .line 307
    :cond_a
    return-object v2
.end method

.method public initConnectionWhenAuthFailDuringHandover()Z
    .locals 1

    .line 204
    const-string v0, "TMobile_DE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEur()Ljava/lang/Boolean;
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTelus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVideoTron()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorWind()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorBell()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorGCI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 146
    .local v0, "isAmerica":Z
    :goto_1
    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public varargs isFullMnoName([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "mnoNames"    # [Ljava/lang/String;

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 84
    .local v3, "mnoName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 83
    .end local v3    # "mnoName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isIndiaNetworkOperator(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 220
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSubId()I

    move-result v1

    .line 221
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 223
    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "mcc":Ljava/lang/String;
    sget-object v5, Lcom/sec/epdg/Operator/EpdgOperator;->INDIA_MCC:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 225
    .local v8, "indiaMcc":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 226
    const/4 v3, 0x1

    return v3

    .line 224
    .end local v8    # "indiaMcc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 229
    .end local v4    # "mcc":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public varargs isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "mnoNames"    # [Ljava/lang/String;

    .line 67
    const-string v0, ""

    .line 68
    .local v0, "primaryMnoName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, "delimiterPos":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    .line 74
    :goto_0
    array-length v3, p1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 75
    .local v5, "mnoName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 74
    .end local v5    # "mnoName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public isNeedProvisioning()Ljava/lang/Boolean;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTelus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVideoTron()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorWind()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorBell()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorGCI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorUscc()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorNexTech()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 138
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isNeedSMSProvisioning()Ljava/lang/Boolean;
    .locals 1

    .line 134
    const-string v0, "Vodafone_GB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;
    .locals 4

    .line 183
    const-string v0, "Orange_FR"

    const-string v1, "Orange_RO"

    const-string v2, "Orange_ES"

    const-string v3, "Orange_PL"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorAtt()Ljava/lang/Boolean;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorBell()Ljava/lang/Boolean;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorFET()Ljava/lang/Boolean;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "FET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorGCI()Ljava/lang/Boolean;
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sales code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mcc/mnc is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "311370"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorKDDI()Ljava/lang/Boolean;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorNexTech()Ljava/lang/Boolean;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "312420"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorOrangeGlobal()Ljava/lang/Boolean;
    .locals 7

    .line 178
    const-string v0, "Orange_RO"

    const-string v1, "Orange_FR"

    const-string v2, "Orange_ES"

    const-string v3, "Orange_PL"

    const-string v4, "Orange_BE"

    const-string v5, "Orange_LU"

    const-string v6, "Orange_SK"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorRogers()Ljava/lang/Boolean;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 151
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorSpr()Ljava/lang/Boolean;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    .line 105
    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    .line 106
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    .line 107
    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorTelus()Ljava/lang/Boolean;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorTmo()Ljava/lang/Boolean;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorUscc()Ljava/lang/Boolean;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorVerizon()Ljava/lang/Boolean;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorVideoTron()Ljava/lang/Boolean;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorWind()Ljava/lang/Boolean;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorXaa()Ljava/lang/Boolean;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStgCdmaOperators()Ljava/lang/Boolean;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorUscc()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorNexTech()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isWifiOnlyOperator()Ljava/lang/Boolean;
    .locals 1

    .line 126
    const-string v0, "Globe_PH"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setMnoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mMnoName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorName"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/sec/epdg/Operator/EpdgOperator;->mOperatorName:Ljava/lang/String;

    .line 52
    return-void
.end method
