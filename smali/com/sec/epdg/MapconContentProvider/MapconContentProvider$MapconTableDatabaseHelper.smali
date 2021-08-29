.class Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MapconContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapconTableDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "mapcon.db"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 283
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v0

    const-string v1, "mapcon.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 285
    return-void
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 288
    const-string v0, "binary_version"

    const-string v1, "mapcon-ver"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/sec/epdg/EpdgUtils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, "version":I
    invoke-static {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->isVersionUpdated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-static {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->saveVersion(Landroid/content/Context;)I

    move-result v0

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPCONPROVIDER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v0
.end method

.method private static initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 333
    const-string v0, "Exception while initializing database"

    const-string v1, "MAPCONPROVIDER"

    const/4 v2, 0x0

    .line 334
    .local v2, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/mapconprovider.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v3, "confFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 337
    .local v4, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 338
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    .line 339
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 340
    const-string v5, "Initiating MAPCON database initialization"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v5, "ratpriority"

    invoke-static {v2, v5}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->access$000(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 343
    invoke-static {p0, v2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable;->loadMapconTable(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 344
    invoke-static {p0, v2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable;->loadIfomTable(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 356
    goto :goto_0

    .line 354
    :catch_0
    move-exception v5

    .line 355
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 358
    :goto_0
    return-void

    .line 352
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 348
    :catch_1
    move-exception v5

    .line 349
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "confFile":Ljava/io/File;
    .end local v4    # "confreader":Ljava/io/FileReader;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v6

    .line 345
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v5

    .line 346
    .local v5, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "File not found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "confFile":Ljava/io/File;
    .end local v4    # "confreader":Ljava/io/FileReader;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 354
    :catch_3
    move-exception v6

    .line 355
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 356
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 357
    :goto_3
    throw v5
.end method

.method private static initDatabase2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 361
    const-string v0, "Exception while initializing database"

    const-string v1, "MAPCONPROVIDER"

    const/4 v2, 0x0

    .line 362
    .local v2, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/mapconprovider.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v3, "confFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 365
    .local v4, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 366
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    .line 367
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 368
    const-string v5, "Initiating MAPCON database initialization"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v5, "ratpriority"

    invoke-static {v2, v5}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->access$000(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 371
    invoke-static {p0, v2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->loadMapconTable(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 372
    invoke-static {p0, v2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable2;->loadIfomTable(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v5

    .line 383
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 386
    :goto_0
    return-void

    .line 380
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 376
    :catch_1
    move-exception v5

    .line 377
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "confFile":Ljava/io/File;
    .end local v4    # "confreader":Ljava/io/FileReader;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v6

    .line 373
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v5

    .line 374
    .local v5, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "File not found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "confFile":Ljava/io/File;
    .end local v4    # "confreader":Ljava/io/FileReader;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confFile":Ljava/io/File;
    .restart local v4    # "confreader":Ljava/io/FileReader;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 382
    :catch_3
    move-exception v6

    .line 383
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 384
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    nop

    .line 385
    :goto_3
    throw v5
.end method

.method private static isVersionUpdated(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 389
    const-string v0, "binary_version"

    const-string v1, "mapcon"

    invoke-static {p0, v0, v1}, Lcom/sec/epdg/EpdgUtils;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "prevVer":Ljava/lang/String;
    const-string v1, "ro.build.PDA"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "pdaVer":Ljava/lang/String;
    const-string v3, "ril.official_cscver"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "cscVer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "currVer":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 395
    const/4 v4, 0x1

    return v4

    .line 397
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private static saveVersion(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 401
    const-string v0, "ro.build.PDA"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "pdaVer":Ljava/lang/String;
    const-string v2, "ril.official_cscver"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "cscVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "currVer":Ljava/lang/String;
    const-string v3, "binary_version"

    const-string v4, "mapcon-ver"

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/sec/epdg/EpdgUtils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 405
    .local v6, "prevMapconVer":I
    const v7, 0x7fffffff

    if-ge v6, v7, :cond_0

    if-ge v6, v5, :cond_1

    .line 406
    :cond_0
    const/4 v6, 0x1

    .line 408
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .line 409
    .local v5, "currMapconVer":I
    const-string v7, "mapcon"

    invoke-static {p0, v3, v7, v2}, Lcom/sec/epdg/EpdgUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {p0, v3, v4, v5}, Lcom/sec/epdg/EpdgUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    return v5
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 299
    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 300
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 301
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 302
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable2;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 303
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->initDatabase2(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " occurred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPCONPROVIDER"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 324
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 325
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 326
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 327
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 328
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 329
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->initDatabase2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 313
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 314
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 315
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 316
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable2;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 317
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    invoke-static {p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->initDatabase2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 319
    return-void
.end method
