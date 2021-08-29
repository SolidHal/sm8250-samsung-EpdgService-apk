.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

.field public static final enum IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

.field public static final enum IP_TYPE_V4:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

.field public static final enum IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

.field public static final enum IP_TYPE_V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 128
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    const-string v1, "IP_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 129
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    const-string v1, "IP_TYPE_V4"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 130
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    const-string v1, "IP_TYPE_V6"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 131
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    const-string v1, "IP_TYPE_V4V6"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    .line 127
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    sget-object v6, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V4:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->IP_TYPE_V6:Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;
    .locals 1

    .line 127
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$IpType;

    return-object v0
.end method
