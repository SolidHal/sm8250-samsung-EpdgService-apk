.class public final enum Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/MapconConstants$MapconMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum IWLAN_LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum LTE_EHRPD_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

.field public static final enum LTE_IWLAN_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 323
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "IWLAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 324
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "IWLAN_LTE"

    const/4 v3, 0x1

    const-string v4, "IWLAN:LTE"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 325
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "IWLAN_LTE_EHRPD"

    const/4 v4, 0x2

    const-string v5, "IWLAN:LTE:EHRPD"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 326
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "LTE_IWLAN"

    const/4 v5, 0x3

    const-string v6, "LTE:IWLAN"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 327
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "LTE_IWLAN_EHRPD"

    const/4 v6, 0x4

    const-string v7, "LTE:IWLAN:EHRPD"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 328
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "LTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 329
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "LTE_EHRPD"

    const/4 v8, 0x6

    const-string v9, "LTE:EHRPD"

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 330
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const-string v1, "LTE_EHRPD_IWLAN"

    const/4 v9, 0x7

    const-string v10, "LTE:EHRPD:IWLAN"

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_EHRPD_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 322
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    sget-object v10, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 335
    iput-object p3, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->mText:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public static getIntValue(Ljava/lang/String;)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 339
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 340
    .local v0, "mapconMode":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    invoke-static {}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->values()[Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 341
    .local v5, "mode":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    invoke-virtual {v5}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    move-object v0, v5

    .line 343
    goto :goto_1

    .line 340
    .end local v5    # "mode":Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    :cond_1
    :goto_1
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_2

    return v3

    .line 349
    :cond_2
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    return v1

    .line 350
    :cond_3
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    return v1

    .line 351
    :cond_4
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_5

    const/4 v1, 0x3

    return v1

    .line 352
    :cond_5
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_6

    const/4 v1, 0x4

    return v1

    .line 353
    :cond_6
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    const/4 v2, 0x5

    if-ne v0, v1, :cond_7

    return v2

    .line 354
    :cond_7
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_EHRPD:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x6

    return v1

    .line 355
    :cond_8
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE_EHRPD_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    if-ne v0, v1, :cond_9

    const/4 v1, 0x7

    return v1

    .line 357
    :cond_9
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 322
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/MapconConstants$MapconMode;
    .locals 1

    .line 322
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->mText:Ljava/lang/String;

    return-object v0
.end method
