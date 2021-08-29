.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPSecAuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

.field public static final enum EAP:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

.field public static final enum PRE_SHARED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

.field public static final enum PUBLIC_KEY:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 68
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    const-string v1, "PRE_SHARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 69
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    const-string v1, "PUBLIC_KEY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 70
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    const-string v1, "EAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 67
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;
    .locals 1

    .line 67
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    return-object v0
.end method
