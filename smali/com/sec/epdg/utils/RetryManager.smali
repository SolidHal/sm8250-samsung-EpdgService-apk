.class public Lcom/sec/epdg/utils/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/utils/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field public static final VDBG:Z = false


# instance fields
.field private mConfig:Ljava/lang/String;

.field private mCurMaxRetryCount:I

.field private mMaxRetryCount:I

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/utils/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRng:Ljava/util/Random;

    .line 128
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetryManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 2
    .param p1, "index"    # I

    .line 318
    iget-object v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/utils/RetryManager$RetryRec;

    iget v0, v0, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mRandomizationTime:I

    .line 319
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    .line 320
    const/4 v1, 0x0

    return v1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 284
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "value":I
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/utils/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 286
    .end local v0    # "value":I
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bad value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RetryManager"

    invoke-static {v2, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 304
    if-gez p2, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bad value: is < 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetryManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_0

    .line 308
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x1

    .line 311
    .restart local v0    # "retVal":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;)Z
    .locals 10
    .param p1, "configStr"    # Ljava/lang/String;

    .line 151
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/sec/epdg/utils/RetryManager;->mConfig:Ljava/lang/String;

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "defaultRandomization":I
    iput v1, p0, Lcom/sec/epdg/utils/RetryManager;->mMaxRetryCount:I

    .line 161
    invoke-virtual {p0}, Lcom/sec/epdg/utils/RetryManager;->resetRetryCount()V

    .line 162
    iget-object v3, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 164
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "strArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_a

    .line 168
    aget-object v5, v3, v4

    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "splitStr":[Ljava/lang/String;
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 170
    array-length v6, v5

    if-le v6, v2, :cond_6

    .line 171
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 172
    aget-object v6, v5, v1

    const-string v7, "default_randomization"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    aget-object v6, v5, v1

    aget-object v7, v5, v2

    invoke-direct {p0, v6, v7}, Lcom/sec/epdg/utils/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 174
    .local v6, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    return v1

    .line 175
    :cond_1
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    .line 176
    .end local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_2
    aget-object v6, v5, v1

    const-string v7, "max_retries"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    aget-object v6, v5, v2

    const-string v7, "infinite"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 178
    iput-boolean v2, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryForever:Z

    goto/16 :goto_2

    .line 180
    :cond_3
    aget-object v6, v5, v1

    aget-object v7, v5, v2

    invoke-direct {p0, v6, v7}, Lcom/sec/epdg/utils/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 181
    .restart local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    return v1

    .line 182
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/sec/epdg/utils/RetryManager;->mMaxRetryCount:I

    goto/16 :goto_2

    .line 185
    .end local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized configuration name value pair: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "RetryManager"

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v1

    .line 194
    :cond_6
    aget-object v6, v3, v4

    const-string v8, ":"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 195
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 196
    new-instance v6, Lcom/sec/epdg/utils/RetryManager$RetryRec;

    invoke-direct {v6, v1, v1}, Lcom/sec/epdg/utils/RetryManager$RetryRec;-><init>(II)V

    .line 197
    .local v6, "rr":Lcom/sec/epdg/utils/RetryManager$RetryRec;
    aget-object v7, v5, v1

    const-string v8, "delayTime"

    invoke-direct {p0, v8, v7}, Lcom/sec/epdg/utils/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 198
    .local v7, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    return v1

    .line 199
    :cond_7
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mDelayTime:I

    .line 202
    array-length v8, v5

    if-le v8, v2, :cond_9

    .line 203
    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 204
    aget-object v8, v5, v2

    const-string v9, "randomizationTime"

    invoke-direct {p0, v9, v8}, Lcom/sec/epdg/utils/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 205
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_8

    return v1

    .line 206
    :cond_8
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_1

    .line 208
    :cond_9
    iput v0, v6, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mRandomizationTime:I

    .line 210
    :goto_1
    iget-object v8, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v5    # "splitStr":[Ljava/lang/String;
    .end local v6    # "rr":Lcom/sec/epdg/utils/RetryManager$RetryRec;
    .end local v7    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 213
    .end local v4    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Lcom/sec/epdg/utils/RetryManager;->mMaxRetryCount:I

    if-le v1, v4, :cond_b

    .line 214
    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/epdg/utils/RetryManager;->mMaxRetryCount:I

    .line 216
    :cond_b
    iget v1, p0, Lcom/sec/epdg/utils/RetryManager;->mMaxRetryCount:I

    iput v1, p0, Lcom/sec/epdg/utils/RetryManager;->mCurMaxRetryCount:I

    .line 217
    return v2

    .line 220
    .end local v0    # "defaultRandomization":I
    .end local v3    # "strArray":[Ljava/lang/String;
    :cond_c
    return v1
.end method

.method public getRetryCount()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    return v0
.end method

.method public getRetryTimer()I
    .locals 3

    .line 229
    iget v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    iget v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    .local v0, "index":I
    goto :goto_0

    .line 232
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 236
    .restart local v0    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/utils/RetryManager$RetryRec;

    iget v1, v1, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/sec/epdg/utils/RetryManager;->nextRandomizationTime(I)I

    move-result v2

    add-int/2addr v1, v2

    .local v1, "retVal":I
    goto :goto_1

    .line 239
    .end local v1    # "retVal":I
    :cond_1
    const/4 v1, 0x0

    .line 243
    .restart local v1    # "retVal":I
    :goto_1
    return v1
.end method

.method public increaseRetryCount()V
    .locals 2

    .line 258
    iget v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    .line 259
    iget v1, p0, Lcom/sec/epdg/utils/RetryManager;->mCurMaxRetryCount:I

    if-le v0, v1, :cond_0

    .line 260
    iput v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    .line 263
    :cond_0
    return-void
.end method

.method public resetRetryCount()V
    .locals 1

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    .line 271
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetryManager: { forever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryForever:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " maxRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/utils/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curMaxRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/utils/RetryManager;->mCurMaxRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " config={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} retryArray={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/utils/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/utils/RetryManager$RetryRec;

    .line 136
    .local v2, "r":Lcom/sec/epdg/utils/RetryManager$RetryRec;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mDelayTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mRandomizationTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .end local v2    # "r":Lcom/sec/epdg/utils/RetryManager$RetryRec;
    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method
