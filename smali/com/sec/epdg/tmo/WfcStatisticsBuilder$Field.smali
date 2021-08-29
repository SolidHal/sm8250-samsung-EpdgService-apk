.class public final enum Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;
.super Ljava/lang/Enum;
.source "WfcStatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum AC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum BEARER:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum BYTES_IN:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum BYTES_OUT:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum DIR:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum MSG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum OK:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum PM:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum RSSI:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum SVC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

.field public static final enum TS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 58
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "SVC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->SVC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 59
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "AC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->AC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 60
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "MSG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->MSG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 61
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "PM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->PM:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 62
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "RSSI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->RSSI:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 63
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "TS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->TS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 64
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "DIR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->DIR:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 65
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "OK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->OK:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 66
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "BYTES_IN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->BYTES_IN:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 67
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "BYTES_OUT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->BYTES_OUT:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 68
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    const-string v1, "BEARER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->BEARER:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    .line 57
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    sget-object v13, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->SVC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v13, v1, v2

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->AC:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->MSG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->PM:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->RSSI:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->TS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->DIR:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->OK:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->BYTES_IN:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->BYTES_OUT:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;
    .locals 1

    .line 57
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {v0}, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    return-object v0
.end method
