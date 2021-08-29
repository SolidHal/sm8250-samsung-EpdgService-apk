.class public Lcom/sec/epdg/Logger/EpdgDumpState;
.super Ljava/lang/Object;
.source "EpdgDumpState.java"


# static fields
.field private static KEY_MAX_ENTRIES:I

.field private static MAX_ENTRIES:I

.field private static final isShipBinary:Z

.field private static mInstance:Lcom/sec/epdg/Logger/EpdgDumpState;

.field private static mInstance2:Lcom/sec/epdg/Logger/EpdgDumpState;


# instance fields
.field private epdgToRilMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private espKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ikeKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipsecFailMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l2wApiCall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l2wHOResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l2wRegistrant:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastEpdgState:Ljava/lang/String;

.field private mPhoneId:I

.field private rilToEpdgMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w2lApiCall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w2lHOResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w2lRegistrant:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const/16 v0, 0xa

    sput v0, Lcom/sec/epdg/Logger/EpdgDumpState;->MAX_ENTRIES:I

    .line 29
    const/16 v0, 0x64

    sput v0, Lcom/sec/epdg/Logger/EpdgDumpState;->KEY_MAX_ENTRIES:I

    .line 31
    nop

    .line 32
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/Logger/EpdgDumpState;->isShipBinary:Z

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wRegistrant:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lRegistrant:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lApiCall:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wApiCall:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wHOResult:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lHOResult:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->epdgToRilMsgs:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->rilToEpdgMsgs:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ipsecFailMsgs:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ikeKey:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->espKey:Ljava/util/ArrayList;

    .line 27
    const-string v0, "UNINITIALIZED"

    iput-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->lastEpdgState:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->mPhoneId:I

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/Logger/EpdgDumpState;

    monitor-enter v0

    .line 49
    if-nez p0, :cond_0

    .line 50
    :try_start_0
    sget-object v1, Lcom/sec/epdg/Logger/EpdgDumpState;->mInstance:Lcom/sec/epdg/Logger/EpdgDumpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/Logger/EpdgDumpState;->mInstance2:Lcom/sec/epdg/Logger/EpdgDumpState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 48
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTimestamp()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 124
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy h:mm:ss a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized makeInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/Logger/EpdgDumpState;

    monitor-enter v0

    .line 39
    if-nez p0, :cond_0

    .line 40
    :try_start_0
    new-instance v1, Lcom/sec/epdg/Logger/EpdgDumpState;

    invoke-direct {v1, p0}, Lcom/sec/epdg/Logger/EpdgDumpState;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/Logger/EpdgDumpState;->mInstance:Lcom/sec/epdg/Logger/EpdgDumpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-object v1

    .line 43
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/Logger/EpdgDumpState;

    invoke-direct {v1, p0}, Lcom/sec/epdg/Logger/EpdgDumpState;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/Logger/EpdgDumpState;->mInstance2:Lcom/sec/epdg/Logger/EpdgDumpState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit v0

    return-object v1

    .line 38
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addEpdgToRilMsgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->epdgToRilMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->MAX_ENTRIES:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->epdgToRilMsgs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 76
    .end local p0    # "this":Lcom/sec/epdg/Logger/EpdgDumpState;
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->epdgToRilMsgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 72
    .end local p1    # "header":Ljava/lang/String;
    .end local p2    # "param":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addEspKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "espSpiI"    # Ljava/lang/String;
    .param p2, "espSpiR"    # Ljava/lang/String;
    .param p3, "espEKi"    # Ljava/lang/String;
    .param p4, "espEKr"    # Ljava/lang/String;
    .param p5, "AKi"    # Ljava/lang/String;
    .param p6, "AKr"    # Ljava/lang/String;
    .param p7, "espEA"    # Ljava/lang/String;
    .param p8, "espAA"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->espKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->KEY_MAX_ENTRIES:I

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->espKey:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp SpiI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp SpiR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp EKi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp EKr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp AKi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp AKr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp EA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Esp AA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->espKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public addIkeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ikeSpiI"    # Ljava/lang/String;
    .param p2, "ikeSpiR"    # Ljava/lang/String;
    .param p3, "ikeSKei"    # Ljava/lang/String;
    .param p4, "ikeSKer"    # Ljava/lang/String;
    .param p5, "ikeSKai"    # Ljava/lang/String;
    .param p6, "ikeSKar"    # Ljava/lang/String;
    .param p7, "ikeEA"    # Ljava/lang/String;
    .param p8, "ikeIA"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ikeKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->KEY_MAX_ENTRIES:I

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ikeKey:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Ike SpiI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Ike SpiR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", Ike SKei: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Ike SKer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Ike SKai: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", Ike SKar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Ike EA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Ike IA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ikeKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public addIpsecFailMsgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "erisError"    # Ljava/lang/String;
    .param p3, "ikeError"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ipsecFailMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->MAX_ENTRIES:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ipsecFailMsgs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ipsecFailMsgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". APN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Fail cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IKE error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "pid"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wApiCall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->MAX_ENTRIES:I

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wApiCall:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wApiCall:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". NetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->rilToEpdgMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->MAX_ENTRIES:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->rilToEpdgMsgs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->rilToEpdgMsgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "pid"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lApiCall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/epdg/Logger/EpdgDumpState;->MAX_ENTRIES:I

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lApiCall:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lApiCall:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/Logger/EpdgDumpState;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". NetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 129
    const-string v0, "LastEpdgState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->lastEpdgState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v0, "L2wRegistrants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wRegistrant:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 135
    const-string v0, "W2L registrants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lRegistrant:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 138
    const-string v0, "W2L Api Calls: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lApiCall:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 141
    const-string v0, "L2W API Calls: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wApiCall:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 144
    const-string v0, "W2L handover results: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->w2lHOResult:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 147
    const-string v0, "L2W handover results: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->l2wHOResult:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 150
    const-string v0, "Epdg To RIL messages: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->epdgToRilMsgs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 153
    const-string v0, "RIL to EPDG messages: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->rilToEpdgMsgs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 156
    const-string v0, "IKE error messages: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ipsecFailMsgs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 159
    sget-boolean v0, Lcom/sec/epdg/Logger/EpdgDumpState;->isShipBinary:Z

    if-nez v0, :cond_0

    .line 160
    const-string v0, "IKE and ESP Keys: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->ikeKey:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 162
    iget-object v0, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->espKey:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->printList(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 164
    :cond_0
    return-void
.end method

.method public dumpLastEpdgState(Ljava/lang/String;)V
    .locals 0
    .param p1, "epdgState"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/sec/epdg/Logger/EpdgDumpState;->lastEpdgState:Ljava/lang/String;

    .line 120
    return-void
.end method
