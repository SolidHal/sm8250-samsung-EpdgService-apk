.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeEapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_AKA:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_SIM:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 192
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_MD5_CHALLENGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 193
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_SIM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 194
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_AKA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 195
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_MSCHAPV2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    .line 191
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    sget-object v6, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 191
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;
    .locals 1

    .line 191
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    return-object v0
.end method
