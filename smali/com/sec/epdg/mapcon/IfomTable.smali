.class public Lcom/sec/epdg/mapcon/IfomTable;
.super Ljava/lang/Object;
.source "IfomTable.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/mapcon/IfomTable;

.field private static mInstance2:Lcom/sec/epdg/mapcon/IfomTable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mIfomMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;",
            "Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mMnoName:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "[IfomTable]"

    sput-object v0, Lcom/sec/epdg/mapcon/IfomTable;->SUB_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    .line 26
    sput-object v0, Lcom/sec/epdg/mapcon/IfomTable;->mInstance2:Lcom/sec/epdg/mapcon/IfomTable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/mapcon/IfomTable;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    .line 222
    iput p1, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    .line 223
    invoke-static {p1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    .line 224
    return-void
.end method

.method private declared-synchronized addToApplicationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 5
    .param p1, "appStr"    # Ljava/lang/String;
    .param p2, "ratTypeStr"    # Ljava/lang/String;
    .param p3, "apnTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;",
            "Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToApplicationMap: appStr is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ratTypeStr is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apnTypeStr is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;

    invoke-direct {v0, p1}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;->getIfomAppList()Ljava/util/EnumSet;

    move-result-object v0

    .line 61
    .local v0, "appList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;>;"
    new-instance v1, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;

    invoke-direct {v1, p3, p2}, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v1, "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 63
    .local v3, "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    iget-object v4, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    nop

    .end local v3    # "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    goto :goto_0

    .line 66
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 56
    .end local v0    # "appList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;>;"
    .end local v1    # "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    .end local p1    # "appStr":Ljava/lang/String;
    .end local p2    # "ratTypeStr":Ljava/lang/String;
    .end local p3    # "apnTypeStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized createInstance(I)Lcom/sec/epdg/mapcon/IfomTable;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/mapcon/IfomTable;

    monitor-enter v0

    .line 211
    if-nez p0, :cond_0

    .line 212
    :try_start_0
    new-instance v1, Lcom/sec/epdg/mapcon/IfomTable;

    invoke-direct {v1, p0}, Lcom/sec/epdg/mapcon/IfomTable;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit v0

    return-object v1

    .line 215
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/mapcon/IfomTable;

    invoke-direct {v1, p0}, Lcom/sec/epdg/mapcon/IfomTable;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/mapcon/IfomTable;->mInstance2:Lcom/sec/epdg/mapcon/IfomTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    monitor-exit v0

    return-object v1

    .line 210
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getApplicationApn(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v0, "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 83
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 78
    .end local v0    # "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .local v0, "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 91
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 86
    .end local v0    # "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v0, "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 69
    .end local v0    # "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized IsLteOnlyAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .local v0, "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 189
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 191
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isLteOnlyAllowed([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 186
    .end local v0    # "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "app":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized IsWifiOnlyAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .local v0, "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 183
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanOnlyAllowed([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 178
    .end local v0    # "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "app":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationApn(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    .line 148
    .local v0, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    iget-object v1, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsRuleforApn: appStr is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " apnType is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    nop

    .line 155
    invoke-static {p2}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    move-result-object v2

    .line 156
    .local v2, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    const/4 v1, 0x1

    return v1

    .line 159
    :cond_1
    return v1
.end method

.method public declared-synchronized createIfomTable(Landroid/content/Context;)Z
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    monitor-enter p0

    .line 95
    :try_start_0
    iget v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 97
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v0, "ipflowrule"

    const-string v2, "routingrule"

    const-string v3, "affectapn"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnoname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ipflowtype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "apps"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "selection":Ljava/lang/String;
    const-string v10, "mnoname=\'default\' AND ipflowtype=\'apps\'"

    .line 108
    .local v10, "defaultSelection":Ljava/lang/String;
    iget v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    move-object v2, v0

    goto :goto_0

    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

    move-object v2, v0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, "messagesCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 114
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    const-string v5, "createIfomTable. Loading default IFOM "

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    :try_start_3
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_4
    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

    :goto_2
    move-object v8, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    move-object v9, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 122
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    goto :goto_4

    .line 127
    :cond_4
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    .line 128
    :try_start_5
    const-string v2, "ipflowrule"

    .line 129
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 128
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "appStr":Ljava/lang/String;
    const-string v5, "routingrule"

    .line 131
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 130
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "ratTypeStr":Ljava/lang/String;
    const-string v6, "affectapn"

    .line 133
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 132
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "apnTypeStr":Ljava/lang/String;
    invoke-direct {p0, v2, v5, v6}, Lcom/sec/epdg/mapcon/IfomTable;->addToApplicationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    nop

    .end local v2    # "appStr":Ljava/lang/String;
    .end local v5    # "ratTypeStr":Ljava/lang/String;
    .end local v6    # "apnTypeStr":Ljava/lang/String;
    goto :goto_3

    .line 136
    :cond_5
    const/4 v2, 0x1

    .line 138
    if-eqz v0, :cond_6

    .line 139
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    const/4 v0, 0x0

    .line 136
    :cond_6
    monitor-exit p0

    return v2

    .line 123
    .restart local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :cond_7
    :goto_4
    :try_start_7
    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    const-string v5, "Empty IFOM DB"

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    const/4 v2, 0x0

    .line 138
    if-eqz v0, :cond_8

    .line 139
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 140
    const/4 v0, 0x0

    .line 124
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :cond_8
    monitor-exit p0

    return v2

    .line 138
    .restart local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :catchall_1
    move-exception v2

    :goto_5
    if-eqz v0, :cond_9

    .line 139
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v0, 0x0

    .line 142
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :cond_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 94
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v10    # "defaultSelection":Ljava/lang/String;
    .end local p1    # "ctx":Landroid/content/Context;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deinitialize()V
    .locals 2

    .line 262
    iget v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    sput-object v1, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    goto :goto_0

    .line 265
    :cond_0
    sput-object v1, Lcom/sec/epdg/mapcon/IfomTable;->mInstance2:Lcom/sec/epdg/mapcon/IfomTable;

    .line 267
    :goto_0
    return-void
.end method

.method public declared-synchronized shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .local v0, "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 205
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 207
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isCsPreceedsIwlan([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 202
    .end local v0    # "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "app":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldMoveToLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .local v0, "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 173
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 175
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isLtePreceedsIwlan([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 170
    .end local v0    # "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "app":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldMoveToWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .local v0, "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 165
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 167
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 162
    .end local v0    # "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "app":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldMoveToWifiInNoLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .local v0, "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 199
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanPreceedsCs([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 194
    .end local v0    # "appRat":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    .end local p1    # "app":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 34
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Application Policy\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 38
    .local v2, "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    iget-object v3, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;

    .line 39
    .local v3, "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v4

    .line 40
    .local v4, "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;

    move-result-object v5

    .line 41
    .local v5, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 42
    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v4, v7

    .line 43
    .local v8, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 42
    .end local v8    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 45
    .end local p0    # "this":Lcom/sec/epdg/mapcon/IfomTable;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 47
    invoke-virtual {v5}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 48
    .local v7, "apn":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 49
    .end local v7    # "apn":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    goto :goto_2

    .line 50
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 51
    .end local v2    # "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    .end local v3    # "policy":Lcom/sec/epdg/Constants/MapconConstants$IfomPolicy;
    .end local v4    # "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local v5    # "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    goto/16 :goto_0

    .line 52
    :cond_2
    monitor-exit p0

    return-object v0

    .line 33
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateIfomTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Ljava/lang/String;

    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "routingrule"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p1, :cond_1

    .line 231
    iget v1, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnoname=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ipflowrule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    iget v3, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

    :goto_0
    const/4 v4, 0x0

    .line 234
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    .end local v1    # "selection":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$IfomMode;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ruleList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/Constants/MapconConstants$IfomMode;

    .line 242
    array-length v0, p2

    .line 243
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    if-lez v0, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/mapcon/IfomTable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIfomTable: size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "builder is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p3}, Lcom/sec/epdg/Constants/MapconConstants$IfomMode;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "routingrule"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p1, :cond_3

    .line 252
    iget v3, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/epdg/mapcon/IfomTable;->mMnoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ipflowrule"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 256
    iget v5, p0, Lcom/sec/epdg/mapcon/IfomTable;->mPhoneId:I

    if-nez v5, :cond_2

    sget-object v5, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_IFOM_TABLE2:Landroid/net/Uri;

    :goto_1
    const/4 v6, 0x0

    .line 255
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    .end local v3    # "selection":Ljava/lang/String;
    :cond_3
    return-void
.end method
