.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HoDelayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

.field public static final enum DONOT_WAIT:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

.field public static final enum REGISTRATION_FINISHED:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

.field public static final enum SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

.field public static final enum UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 163
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 164
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    const-string v1, "SETTING_CHANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 165
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    const-string v1, "REGISTRATION_FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 166
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    const-string v1, "DONOT_WAIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    .line 162
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    sget-object v6, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;
    .locals 1

    .line 162
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$HoDelayStatus;

    return-object v0
.end method
