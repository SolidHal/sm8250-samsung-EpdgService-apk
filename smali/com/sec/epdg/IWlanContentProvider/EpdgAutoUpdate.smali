.class public Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
.super Ljava/lang/Object;
.source "EpdgAutoUpdate.java"


# static fields
.field private static final EpdgUPDATE_JSON_FILE:Ljava/lang/String; = "imsupdate.json"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_FILE_PATH_CSC:Ljava/lang/String; = "/system/csc"

.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final COLUMN_APN_TYPE:Ljava/lang/String;

.field private final COLUMN_IPFLOW_AFFECT_APN:Ljava/lang/String;

.field private final COLUMN_IPFLOW_ROUTING_RULE:Ljava/lang/String;

.field private final COLUMN_IPFLOW_RULE:Ljava/lang/String;

.field private final COLUMN_IPFLOW_TYPE:Ljava/lang/String;

.field private final COLUMN_MNO_NAME:Ljava/lang/String;

.field private final COLUMN_RAT_PREF_ORDER:Ljava/lang/String;

.field private final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field private final CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

.field private final CONTENT_URI_IWLANSETTING:Landroid/net/Uri;

.field private final CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mCurrentHash:Ljava/lang/String;

.field private mHashChanged:Z

.field private mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

.field private mNote:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mNote:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mCurrentHash:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashChanged:Z

    .line 50
    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    .line 52
    const-string v0, "content://iwlansettings/todos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_IWLANSETTING:Landroid/net/Uri;

    .line 53
    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    .line 54
    const-string v0, "content://mapconprovider/mapcon/mapcontable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    .line 55
    const-string v0, "content://mapconprovider/mapcon/ifomtable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    .line 58
    const-string v0, "mnoname"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_MNO_NAME:Ljava/lang/String;

    .line 59
    const-string v0, "apntype"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_APN_TYPE:Ljava/lang/String;

    .line 60
    const-string v0, "ratpreforder"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_RAT_PREF_ORDER:Ljava/lang/String;

    .line 63
    const-string v0, "ipflowtype"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_IPFLOW_TYPE:Ljava/lang/String;

    .line 64
    const-string v0, "ipflowrule"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_IPFLOW_RULE:Ljava/lang/String;

    .line 65
    const-string v0, "routingrule"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_IPFLOW_ROUTING_RULE:Ljava/lang/String;

    .line 66
    const-string v0, "affectapn"

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->COLUMN_IPFLOW_AFFECT_APN:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1, p2}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->getInstance(Landroid/content/Context;I)Lcom/sec/epdg/IWlanContentProvider/HashManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    .line 71
    iput p2, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mPhoneId:I

    .line 72
    return-void
.end method

.method private static getEtcPath()Ljava/lang/String;
    .locals 2

    .line 437
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getNWPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omc_etcpath"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 75
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    monitor-exit v0

    return-object v1

    .line 79
    :cond_0
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    invoke-direct {v3, p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;

    return-object v0

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getNWPath(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .line 426
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 427
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omcnw_path2"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    :cond_0
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omcnw_path"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPath()Ljava/lang/String;
    .locals 2

    .line 433
    const-string v0, "persist.sys.omc_path"

    const-string v1, "/system/csc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUpdateFilePath()Ljava/lang/String;
    .locals 8

    .line 392
    const-string v0, "/system/csc"

    .line 394
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->isOmcModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    iget v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getNWPath(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "omcPath":Ljava/lang/String;
    const-string v2, "/system/csc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const-string v0, "/system/csc/imsupdate.json"

    goto :goto_0

    .line 402
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "imsupdate.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 406
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsupdate.json doesn\'t exist! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getEtcPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v1    # "omcPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    goto :goto_1

    .line 412
    :cond_2
    const-string v0, "/system/csc/imsupdate.json"

    .line 414
    :goto_1
    return-object v0
.end method

.method private insertNewProfile(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 218
    const-string v6, "mnoname=\"default\""

    .line 219
    .local v6, "select":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, "defaultCv":Landroid/content/ContentValues;
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 223
    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 224
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 219
    .end local v1    # "defaultCv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "select":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    throw v1

    .line 227
    .restart local v6    # "select":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 229
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-void
.end method

.method private static isOmcModel()Z
    .locals 2

    .line 419
    const-string v0, "persist.sys.omc_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readObject(Landroid/util/JsonReader;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 214
    return-object v0
.end method

.method private declared-synchronized updateEpdgDatabase(Landroid/util/JsonReader;)V
    .locals 2
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 442
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "name":Ljava/lang/String;
    const-string v1, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mNote:Ljava/lang/String;

    goto :goto_1

    .line 450
    .end local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :cond_0
    const-string v1, "iwlansettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->updateIwlansettings(Landroid/util/JsonReader;)V

    goto :goto_1

    .line 452
    :cond_1
    const-string v1, "epdgsettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->updateEpdgsettings(Landroid/util/JsonReader;)V

    goto :goto_1

    .line 454
    :cond_2
    const-string v1, "mapcon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->updateMapcon(Landroid/util/JsonReader;)V

    goto :goto_1

    .line 456
    :cond_3
    const-string v1, "ifomtable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->updateIfomtable(Landroid/util/JsonReader;)V

    goto :goto_1

    .line 459
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 461
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 462
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 440
    .end local p1    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateEpdgsettings(Landroid/util/JsonReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 153
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->readObject(Landroid/util/JsonReader;)Landroid/content/ContentValues;

    move-result-object v0

    .line 156
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "mnoname"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 157
    const/4 v2, 0x0

    .line 159
    .local v2, "result":I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "selection":Ljava/lang/String;
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEpdgsettings() selection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 164
    .end local v1    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    if-nez v2, :cond_0

    .line 167
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v3, "Insert new epdg profile"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v1, "epdgenable"

    const-string v3, "on"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->insertNewProfile(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 172
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "result":I
    :cond_0
    goto/16 :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 174
    return-void
.end method

.method private updateIfomtable(Landroid/util/JsonReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 345
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 347
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 349
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "value":Ljava/lang/String;
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ifomtable] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v3, "ipflowType"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    const-string v1, "ipflowtype"

    goto :goto_2

    .line 357
    :cond_0
    const-string v3, "ipflowRule"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    const-string v1, "ipflowrule"

    goto :goto_2

    .line 359
    :cond_1
    const-string v3, "routingRule"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    const-string v1, "routingrule"

    goto :goto_2

    .line 361
    :cond_2
    const-string v3, "apnName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    const-string v1, "affectapn"

    .line 365
    :cond_3
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 367
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 369
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "mnoname"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 370
    const-string v2, "ipflowtype"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_5

    const-string v4, "ipflowrule"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v3, :cond_5

    .line 372
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoname=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" AND ipflowtype=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" AND ipflowrule=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "selection":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIfomtable() selection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v2, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    nop

    .end local v1    # "selection":Ljava/lang/String;
    goto :goto_3

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_5
    :goto_3
    goto/16 :goto_0

    .line 382
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 383
    return-void
.end method

.method private updateIwlansettings(Landroid/util/JsonReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 179
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->readObject(Landroid/util/JsonReader;)Landroid/content/ContentValues;

    move-result-object v0

    .line 182
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "mnoname"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "connname"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 183
    const/4 v3, 0x0

    .line 185
    .local v3, "result":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoname=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" AND connname=\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "selection":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIwlansettings() selection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_IWLANSETTING:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 191
    .end local v1    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    if-nez v3, :cond_0

    .line 194
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v2, "Insert new iwlan profile"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_IWLANSETTING:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->insertNewProfile(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 198
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "result":I
    :cond_0
    goto/16 :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 200
    return-void
.end method

.method private updateMapcon(Landroid/util/JsonReader;)V
    .locals 23
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 256
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 260
    .local v2, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "mnonameKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "mnonameValue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "apns":Ljava/lang/String;
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mapcon] mnoname : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 266
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    const-string v6, "apntype"

    if-eqz v0, :cond_3

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v0, "inputCv":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 270
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, "value":Ljava/lang/String;
    const-string v9, "apnName"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 277
    const-string v7, "apntype"

    goto :goto_3

    .line 278
    :cond_0
    const-string v9, "ratPriority"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 279
    const-string v7, "ratpreforder"

    .line 282
    :cond_1
    :goto_3
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_2

    .line 284
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 285
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v0    # "inputCv":Landroid/content/ContentValues;
    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "result":I
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "result":I
    .local v8, "result":I
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v10, "\""

    const-string v11, "\" AND apntype=\""

    const-string v12, "mnoname=\""

    const-string v13, "SQLiteException : "

    const-string v14, "mnoname"

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ContentValues;

    .line 292
    .local v15, "cv":Landroid/content/ContentValues;
    invoke-virtual {v15}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v15, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_5

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 294
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "selection":Ljava/lang/String;
    sget-object v9, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v5

    .end local v5    # "apns":Ljava/lang/String;
    .local v16, "apns":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v7

    :try_start_2
    const-string v7, "updateMapcon() selection = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v5, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v15, v0, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v5

    .line 298
    if-nez v8, :cond_4

    .line 299
    goto :goto_7

    .line 303
    .end local v0    # "selection":Ljava/lang/String;
    :cond_4
    goto :goto_6

    .line 301
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_5

    .end local v16    # "apns":Ljava/lang/String;
    .restart local v5    # "apns":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    .line 302
    .end local v5    # "apns":Ljava/lang/String;
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v16    # "apns":Ljava/lang/String;
    :goto_5
    sget-object v5, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 292
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v16    # "apns":Ljava/lang/String;
    .restart local v5    # "apns":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    .line 305
    .end local v5    # "apns":Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "apns":Ljava/lang/String;
    :goto_6
    move-object/from16 v5, v16

    move-object/from16 v7, v17

    goto/16 :goto_4

    .line 291
    .end local v16    # "apns":Ljava/lang/String;
    .restart local v5    # "apns":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    .line 307
    .end local v5    # "apns":Ljava/lang/String;
    .restart local v16    # "apns":Ljava/lang/String;
    :goto_7
    if-nez v8, :cond_d

    .line 308
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v5, "Insert new mapcon table"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v5, "mnoname=\"default\""

    .line 310
    .local v5, "select":Ljava/lang/String;
    :try_start_3
    iget-object v0, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    iget-object v0, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v5

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v0

    .line 312
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_b

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 314
    :goto_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v0, "defaultCv":Landroid/content/ContentValues;
    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 317
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 318
    .local v9, "getCv":Landroid/content/ContentValues;
    if-eqz v9, :cond_7

    .line 319
    :try_start_5
    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    .line 310
    .end local v0    # "defaultCv":Landroid/content/ContentValues;
    .end local v9    # "getCv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object v2, v0

    goto/16 :goto_a

    .line 321
    .restart local v0    # "defaultCv":Landroid/content/ContentValues;
    .restart local v9    # "getCv":Landroid/content/ContentValues;
    :cond_7
    :goto_9
    :try_start_6
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v15, "_id"

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 324
    const/4 v15, 0x0

    .line 325
    .local v15, "exist":I
    move-object/from16 v17, v2

    .end local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .local v17, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v18, v3

    .end local v3    # "mnonameKey":Ljava/lang/String;
    .local v18, "mnonameKey":Ljava/lang/String;
    :try_start_8
    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "selection":Ljava/lang/String;
    iget-object v3, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v19, v4

    .end local v4    # "mnonameValue":Ljava/lang/String;
    .local v19, "mnonameValue":Ljava/lang/String;
    :try_start_9
    iget-object v4, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "select":Ljava/lang/String;
    .local v20, "select":Ljava/lang/String;
    :try_start_a
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 329
    .end local v15    # "exist":I
    .local v3, "exist":I
    if-nez v3, :cond_8

    .line 330
    iget-object v4, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v15, v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 332
    .end local v0    # "defaultCv":Landroid/content/ContentValues;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "exist":I
    .end local v9    # "getCv":Landroid/content/ContentValues;
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_8

    .line 310
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_a

    .end local v20    # "select":Ljava/lang/String;
    .restart local v5    # "select":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v5

    move-object v2, v0

    .end local v5    # "select":Ljava/lang/String;
    .restart local v20    # "select":Ljava/lang/String;
    goto :goto_a

    .end local v19    # "mnonameValue":Ljava/lang/String;
    .end local v20    # "select":Ljava/lang/String;
    .restart local v4    # "mnonameValue":Ljava/lang/String;
    .restart local v5    # "select":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object v2, v0

    .end local v4    # "mnonameValue":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .restart local v19    # "mnonameValue":Ljava/lang/String;
    .restart local v20    # "select":Ljava/lang/String;
    goto :goto_a

    .end local v18    # "mnonameKey":Ljava/lang/String;
    .end local v19    # "mnonameValue":Ljava/lang/String;
    .end local v20    # "select":Ljava/lang/String;
    .local v3, "mnonameKey":Ljava/lang/String;
    .restart local v4    # "mnonameValue":Ljava/lang/String;
    .restart local v5    # "select":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object v2, v0

    .end local v3    # "mnonameKey":Ljava/lang/String;
    .end local v4    # "mnonameValue":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .restart local v18    # "mnonameKey":Ljava/lang/String;
    .restart local v19    # "mnonameValue":Ljava/lang/String;
    .restart local v20    # "select":Ljava/lang/String;
    goto :goto_a

    .end local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v18    # "mnonameKey":Ljava/lang/String;
    .end local v19    # "mnonameValue":Ljava/lang/String;
    .end local v20    # "select":Ljava/lang/String;
    .local v2, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "mnonameKey":Ljava/lang/String;
    .restart local v4    # "mnonameValue":Ljava/lang/String;
    .restart local v5    # "select":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object v2, v0

    .end local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "mnonameKey":Ljava/lang/String;
    .end local v4    # "mnonameValue":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .restart local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v18    # "mnonameKey":Ljava/lang/String;
    .restart local v19    # "mnonameValue":Ljava/lang/String;
    .restart local v20    # "select":Ljava/lang/String;
    :goto_a
    if-eqz v7, :cond_a

    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "result":I
    .end local v16    # "apns":Ljava/lang/String;
    .end local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v18    # "mnonameKey":Ljava/lang/String;
    .end local v19    # "mnonameValue":Ljava/lang/String;
    .end local v20    # "select":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    .end local p1    # "reader":Landroid/util/JsonReader;
    :cond_a
    :goto_b
    throw v2

    .line 312
    .restart local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "mnonameKey":Ljava/lang/String;
    .restart local v4    # "mnonameValue":Ljava/lang/String;
    .restart local v5    # "select":Ljava/lang/String;
    .restart local v8    # "result":I
    .restart local v16    # "apns":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    .restart local p1    # "reader":Landroid/util/JsonReader;
    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 334
    .end local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "mnonameKey":Ljava/lang/String;
    .end local v4    # "mnonameValue":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .restart local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v18    # "mnonameKey":Ljava/lang/String;
    .restart local v19    # "mnonameValue":Ljava/lang/String;
    .restart local v20    # "select":Ljava/lang/String;
    :goto_c
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_d

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    goto :goto_e

    .line 336
    :cond_c
    :goto_d
    goto :goto_f

    .line 334
    .end local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v18    # "mnonameKey":Ljava/lang/String;
    .end local v19    # "mnonameValue":Ljava/lang/String;
    .end local v20    # "select":Ljava/lang/String;
    .restart local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "mnonameKey":Ljava/lang/String;
    .restart local v4    # "mnonameValue":Ljava/lang/String;
    .restart local v5    # "select":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 335
    .end local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "mnonameKey":Ljava/lang/String;
    .end local v4    # "mnonameValue":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v18    # "mnonameKey":Ljava/lang/String;
    .restart local v19    # "mnonameValue":Ljava/lang/String;
    .restart local v20    # "select":Ljava/lang/String;
    :goto_e
    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 307
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v17    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v18    # "mnonameKey":Ljava/lang/String;
    .end local v19    # "mnonameValue":Ljava/lang/String;
    .end local v20    # "select":Ljava/lang/String;
    .restart local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "mnonameKey":Ljava/lang/String;
    .restart local v4    # "mnonameValue":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 338
    .end local v2    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "mnonameKey":Ljava/lang/String;
    .end local v4    # "mnonameValue":Ljava/lang/String;
    .end local v8    # "result":I
    .end local v16    # "apns":Ljava/lang/String;
    :goto_f
    goto/16 :goto_0

    .line 339
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 340
    return-void
.end method


# virtual methods
.method public applyCarrierFeatureUpdate()Z
    .locals 7

    .line 85
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v1, "applyCarrierFeatureUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mPhoneId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v0

    .line 89
    .local v0, "carrierId":I
    sget-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCarrierFeature phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " carrierId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    return v2

    .line 96
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget v3, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mPhoneId:I

    .line 97
    const-string v4, "CarrierFeature_IMS_ImsUpdate"

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "updateList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v4, "carrierfeature was not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v2

    .line 103
    :cond_1
    :try_start_0
    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v3, "reader":Landroid/util/JsonReader;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->updateEpdgDatabase(Landroid/util/JsonReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const/4 v4, 0x1

    .line 106
    :try_start_2
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    return v4

    .line 103
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "carrierId":I
    .end local v1    # "updateList":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 106
    .end local v3    # "reader":Landroid/util/JsonReader;
    .restart local v0    # "carrierId":I
    .restart local v1    # "updateList":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v3    # "e":Ljava/io/IOException;
    return v2
.end method

.method public applyEpdgOMCUpdate()Z
    .locals 10

    .line 113
    const-string v0, "epdgupdate"

    const-string v1, "IOException : "

    invoke-direct {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "updateFilePath":Ljava/lang/String;
    sget-object v3, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use imsupdate file on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 123
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v4, v4, [B

    .line 124
    .local v4, "content":[B
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .local v6, "rf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 126
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    .end local v6    # "rf":Ljava/io/RandomAccessFile;
    nop

    .line 131
    :try_start_3
    new-instance v6, Landroid/util/JsonReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 133
    .local v6, "reader":Landroid/util/JsonReader;
    :try_start_4
    iget-object v7, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    invoke-virtual {v7, v0, v4}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->getHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mCurrentHash:Ljava/lang/String;

    .line 134
    iget-object v8, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    invoke-virtual {v8, v0, v7}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->isHashChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashChanged:Z

    .line 136
    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v7, "imsupdate.json has been changed. New Update!"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, v6}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->updateEpdgDatabase(Landroid/util/JsonReader;)V

    .line 139
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->saveHash()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    const/4 v0, 0x1

    .line 144
    :try_start_5
    invoke-virtual {v6}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 140
    return v0

    .line 142
    :cond_1
    :try_start_6
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v7, "imsupdate.json has been not changed. No Update."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    :try_start_7
    invoke-virtual {v6}, Landroid/util/JsonReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 146
    .end local v6    # "reader":Landroid/util/JsonReader;
    goto :goto_1

    .line 131
    .restart local v6    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v6}, Landroid/util/JsonReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_9
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "updateFilePath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "content":[B
    .end local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :goto_0
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 144
    .end local v6    # "reader":Landroid/util/JsonReader;
    .restart local v2    # "updateFilePath":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "content":[B
    .restart local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return v5

    .line 124
    .local v6, "rf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v7

    :try_start_b
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "updateFilePath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "content":[B
    .end local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :goto_2
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 126
    .end local v6    # "rf":Ljava/io/RandomAccessFile;
    .restart local v2    # "updateFilePath":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "content":[B
    .restart local p0    # "this":Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v5

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "content":[B
    :cond_2
    :goto_3
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->TAG:Ljava/lang/String;

    const-string v1, "imsupdate.json not found in CSC."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v5
.end method

.method public saveHash()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    iget-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mCurrentHash:Ljava/lang/String;

    const-string v2, "epdgupdate"

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->saveHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashManager:Lcom/sec/epdg/IWlanContentProvider/HashManager;

    iget-object v1, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/IWlanContentProvider/HashManager;->saveMemo(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgAutoUpdate;->mHashChanged:Z

    .line 389
    return-void
.end method
