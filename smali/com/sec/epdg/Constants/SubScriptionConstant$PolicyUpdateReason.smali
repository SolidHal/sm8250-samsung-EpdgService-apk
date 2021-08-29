.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyUpdateReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

.field public static final enum BOOTUP_CHECKING:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

.field public static final enum PREFERRED_MODE_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

.field public static final enum ROAMING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

.field public static final enum VOLTE_SETTING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

.field public static final enum VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 155
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    const-string v1, "ROAMING_CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    .line 156
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    const-string v1, "PREFERRED_MODE_CHANGED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    .line 157
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    const-string v1, "VOWIFI_SETTING_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    .line 158
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    const-string v1, "BOOTUP_CHECKING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    .line 159
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    const-string v1, "VOLTE_SETTING_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    .line 154
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    sget-object v7, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    aput-object v7, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 154
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;
    .locals 1

    .line 154
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$PolicyUpdateReason;

    return-object v0
.end method
