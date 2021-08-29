.class public Lcom/sec/epdg/mapcon/MapconTable;
.super Ljava/lang/Object;
.source "MapconTable.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/mapcon/MapconTable;

.field private static mInstance2:Lcom/sec/epdg/mapcon/MapconTable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMapconMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;",
            "[",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "[MapconTable]"

    sput-object v0, Lcom/sec/epdg/mapcon/MapconTable;->SUB_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    .line 27
    sput-object v0, Lcom/sec/epdg/mapcon/MapconTable;->mInstance2:Lcom/sec/epdg/mapcon/MapconTable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/mapcon/MapconTable;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->TAG:Ljava/lang/String;

    .line 214
    iput p1, p0, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    .line 215
    return-void
.end method

.method private declared-synchronized addToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 10
    .param p1, "apnTypeStr"    # Ljava/lang/String;
    .param p2, "ratTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;",
            "[",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;

    invoke-direct {v0, p1}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnTypeList;->getMapconApnTypeList()Ljava/util/EnumSet;

    move-result-object v0

    .line 53
    .local v0, "apnTypeList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    new-instance v1, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;

    invoke-direct {v1, p2}, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->getMapconPrefListArray()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v1

    .line 55
    .local v1, "ratListSorted":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 56
    .local v3, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    iget-object v4, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 58
    .local v6, "test":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    iget-object v7, p0, Lcom/sec/epdg/mapcon/MapconTable;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apnType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " rat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v6    # "test":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    .end local v3    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 50
    .end local v0    # "apnTypeList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    .end local v1    # "ratListSorted":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p1    # "apnTypeStr":Ljava/lang/String;
    .end local p2    # "ratTypeStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized createInstance(I)Lcom/sec/epdg/mapcon/MapconTable;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/mapcon/MapconTable;

    monitor-enter v0

    .line 203
    if-nez p0, :cond_0

    .line 204
    :try_start_0
    new-instance v1, Lcom/sec/epdg/mapcon/MapconTable;

    invoke-direct {v1, p0}, Lcom/sec/epdg/mapcon/MapconTable;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit v0

    return-object v1

    .line 207
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/mapcon/MapconTable;

    invoke-direct {v1, p0}, Lcom/sec/epdg/mapcon/MapconTable;-><init>(I)V

    sput-object v1, Lcom/sec/epdg/mapcon/MapconTable;->mInstance2:Lcom/sec/epdg/mapcon/MapconTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit v0

    return-object v1

    .line 202
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 2
    .param p1, "apnTypeKey"    # Ljava/lang/String;

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    move-result-object v0

    .line 68
    .local v0, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    iget-object v1, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 66
    .end local v0    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnTypeKey":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized IsIwlanAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    .line 184
    .local v0, "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanAllowedType([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 182
    .end local v0    # "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized IsLteOnlyAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    .line 194
    .local v0, "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isLteOnlyAllowed([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 192
    .end local v0    # "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized IsWifiOnlyAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    .line 189
    .local v0, "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanOnlyAllowed([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 187
    .end local v0    # "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createMapconTable(Landroid/content/Context;)Z
    .locals 16
    .param p1, "ctx"    # Landroid/content/Context;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 128
    :try_start_0
    iget v0, v1, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 129
    .local v2, "mnoName":Ljava/lang/String;
    const-string v0, "[MAPCON]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMapconTable mnoName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 131
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string v0, "apntype"

    const-string v3, "ratpreforder"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnoname=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "selection":Ljava/lang/String;
    const-string v13, "mnoname=\'default\'"

    .line 137
    .local v13, "defaultSelection":Ljava/lang/String;
    const/4 v3, 0x1

    .line 139
    .local v3, "result":Z
    iget v0, v1, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    move-object v5, v0

    goto :goto_0

    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

    move-object v5, v0

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v0

    .line 142
    .local v5, "messagesCursor":Landroid/database/Cursor;
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_5

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 143
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, v1, Lcom/sec/epdg/mapcon/MapconTable;->TAG:Ljava/lang/String;

    const-string v8, "createMapconTable. Loading default MAPCON"

    invoke-static {v0, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    if-eqz v5, :cond_2

    .line 145
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :cond_2
    :try_start_4
    iget v0, v1, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_3

    :try_start_5
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_6
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

    :goto_2
    move-object v11, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v0

    .line 149
    if-eqz v5, :cond_4

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-gtz v0, :cond_5

    .line 150
    :cond_4
    :try_start_8
    iget-object v0, v1, Lcom/sec/epdg/mapcon/MapconTable;->TAG:Ljava/lang/String;

    const-string v8, "Empty MAPCON DB"

    invoke-static {v0, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 151
    const/4 v3, 0x0

    .line 154
    :cond_5
    if-eqz v5, :cond_6

    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 155
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    const-string v0, "apntype"

    .line 157
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 156
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "apnTypeStr":Ljava/lang/String;
    const-string v8, "ratpreforder"

    .line 159
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 158
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "ratTypeStr":Ljava/lang/String;
    invoke-direct {v1, v0, v8}, Lcom/sec/epdg/mapcon/MapconTable;->addToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 161
    nop

    .end local v0    # "apnTypeStr":Ljava/lang/String;
    .end local v8    # "ratTypeStr":Ljava/lang/String;
    goto :goto_3

    .line 164
    :cond_6
    if-eqz v5, :cond_7

    .line 165
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 166
    const/4 v5, 0x0

    .line 168
    :cond_7
    :goto_4
    monitor-exit p0

    return v3

    .line 164
    .restart local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v5, :cond_7

    .line 165
    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 166
    const/4 v5, 0x0

    goto :goto_4

    .line 127
    .end local v2    # "mnoName":Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "messagesCursor":Landroid/database/Cursor;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v13    # "defaultSelection":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "ctx":Landroid/content/Context;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deinitialize()V
    .locals 2

    .line 253
    iget v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    sput-object v1, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    goto :goto_0

    .line 256
    :cond_0
    sput-object v1, Lcom/sec/epdg/mapcon/MapconTable;->mInstance2:Lcom/sec/epdg/mapcon/MapconTable;

    .line 258
    :goto_0
    return-void
.end method

.method public declared-synchronized getMapconMode()Ljava/lang/String;
    .locals 12

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    sget-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-virtual {v1}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 96
    .local v1, "index":I
    new-array v2, v1, [B

    .line 98
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 99
    sget-object v4, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 104
    .local v3, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    iget-object v4, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 105
    .local v4, "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    const-string v5, ""

    .line 106
    .local v5, "strPolicy":Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_4

    aget-object v9, v4, v8

    .line 107
    .local v9, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    const-string v10, "ehrpd"

    invoke-virtual {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "EHRPD:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    goto :goto_3

    .line 109
    :cond_1
    const-string v10, "lte"

    invoke-virtual {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "LTE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    goto :goto_3

    .line 111
    :cond_2
    const-string v10, "iwlan"

    invoke-virtual {v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "IWLAN:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 106
    .end local v9    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 115
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 116
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 117
    invoke-static {v5}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->getIntValue(Ljava/lang/String;)I

    move-result v6

    .line 118
    .local v6, "value":I
    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v7

    move v1, v7

    .line 119
    int-to-byte v7, v6

    aput-byte v7, v2, v1

    .line 121
    .end local v3    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .end local v4    # "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local v5    # "strPolicy":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_5
    goto/16 :goto_1

    .line 123
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .local v3, "result":Ljava/lang/String;
    monitor-exit p0

    return-object v3

    .line 93
    .end local v0    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    .end local v1    # "index":I
    .end local v2    # "data":[B
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMapconPolicy()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 72
    :try_start_0
    const-string v0, ""

    .line 73
    .local v0, "strPolicy":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 76
    .local v2, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    iget-object v3, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 77
    .local v3, "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 78
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 79
    .local v7, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    const-string v8, "ehrpd"

    invoke-virtual {v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "E:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_2

    .line 81
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    :cond_0
    const-string v8, "lte"

    invoke-virtual {v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "L:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_2

    .line 83
    :cond_1
    const-string v8, "iwlan"

    invoke-virtual {v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "W:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 78
    .end local v7    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 89
    .end local v2    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .end local v3    # "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    goto/16 :goto_0

    .line 90
    :cond_4
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "strPolicy":Ljava/lang/String;
    .end local v1    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVoWifiPref(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 198
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    .line 199
    .local v0, "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 197
    .end local v0    # "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldMoveToLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    .line 179
    .local v0, "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isLtePreceedsIwlan([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 177
    .end local v0    # "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldMoveToWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v0

    .line 174
    .local v0, "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/Constants/MapconConstants$MapconRat;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 172
    .end local v0    # "mapcon":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 35
    :try_start_0
    const-string v0, "MAPCON Policy\n"

    .line 36
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    .local v1, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 39
    .local v2, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    iget-object v3, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 40
    .local v3, "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 41
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 42
    .local v6, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 41
    .end local v6    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 44
    .end local p0    # "this":Lcom/sec/epdg/mapcon/MapconTable;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 45
    .end local v2    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .end local v3    # "ratList":[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit p0

    return-object v0

    .line 34
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "ratpreforder"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz p1, :cond_1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnoname=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "apntype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 226
    iget v3, p0, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

    :goto_0
    const/4 v4, 0x0

    .line 225
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    .end local v1    # "selection":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/Constants/MapconConstants$MapconMode;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/Constants/MapconConstants$MapconMode;

    .line 233
    array-length v0, p2

    .line 234
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 236
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

    .line 237
    if-lez v0, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 240
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p3}, Lcom/sec/epdg/Constants/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ratpreforder"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz p1, :cond_3

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "apntype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 247
    iget v5, p0, Lcom/sec/epdg/mapcon/MapconTable;->mPhoneId:I

    if-nez v5, :cond_2

    sget-object v5, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sec/epdg/Constants/MapconConstants;->CONTENT_URI_MAPCON_TABLE2:Landroid/net/Uri;

    :goto_1
    const/4 v6, 0x0

    .line 246
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    .end local v3    # "selection":Ljava/lang/String;
    :cond_3
    return-void
.end method
