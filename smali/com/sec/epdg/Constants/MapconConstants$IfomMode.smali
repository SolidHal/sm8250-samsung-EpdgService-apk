.class public final enum Lcom/sec/epdg/Constants/MapconConstants$IfomMode;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IfomMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/MapconConstants$IfomMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_CELLULAR_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_LTE:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_LTE_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_LTE_CELLULAR_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

.field public static final enum APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 367
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN_LTE"

    const/4 v2, 0x0

    const-string v3, "IWLAN:LTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 368
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN_LTE_CELLULAR"

    const/4 v3, 0x1

    const-string v4, "IWLAN:LTE:CS"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 369
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_IWLAN_CELLULAR"

    const/4 v4, 0x2

    const-string v5, "LTE:IWLAN:CS"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 370
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_CELLULAR_IWLAN"

    const/4 v5, 0x3

    const-string v6, "LTE:CS:IWLAN"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_CELLULAR_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 371
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_CELLULAR"

    const/4 v6, 0x4

    const-string v7, "LTE:CS"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 372
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_LTE"

    const/4 v7, 0x5

    const-string v8, "LTE"

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 373
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN"

    const/4 v8, 0x6

    const-string v9, "IWLAN"

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 375
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN_CELLULAR"

    const/4 v9, 0x7

    const-string v10, "IWLAN:CS"

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 376
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_IWLAN"

    const/16 v10, 0x8

    const-string v11, "LTE:IWLAN"

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 377
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_CELLULAR_IWLAN"

    const/16 v11, 0x9

    const-string v12, "CS:IWLAN"

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 378
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    const-string v1, "APP_CELLULAR"

    const/16 v12, 0xa

    const-string v13, "CS"

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 366
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    sget-object v13, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v13, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_CELLULAR_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

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

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    iput-object p3, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->mText:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 366
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/MapconConstants$IfomMode;
    .locals 1

    .line 366
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->mText:Ljava/lang/String;

    return-object v0
.end method
