.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$DataState;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$DataState;

.field public static final enum DATA_STATE_RESUME:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

.field public static final enum DATA_STATE_SUSPEND:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

.field public static final enum DATA_STATE_UNKNOWN:Lcom/sec/epdg/DataType/IWlanEnum$DataState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 244
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    const-string v1, "DATA_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->DATA_STATE_UNKNOWN:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    .line 245
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    const-string v1, "DATA_STATE_SUSPEND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->DATA_STATE_SUSPEND:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    .line 246
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    const-string v1, "DATA_STATE_RESUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->DATA_STATE_RESUME:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    .line 243
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->DATA_STATE_UNKNOWN:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->DATA_STATE_SUSPEND:Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$DataState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 243
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$DataState;
    .locals 1

    .line 243
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$DataState;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$DataState;

    return-object v0
.end method
