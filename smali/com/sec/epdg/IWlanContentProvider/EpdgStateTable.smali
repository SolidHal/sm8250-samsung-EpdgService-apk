.class Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;
.super Ljava/lang/Object;
.source "EpdgStateTable.java"


# static fields
.field protected static final COLUMN_EPDG_AVAILABLE:Ljava/lang/String; = "epdg_available"

.field protected static final COLUMN_EPDG_CONNECTED:Ljava/lang/String; = "epdg_connected"

.field protected static final COLUMN_ID:Ljava/lang/String; = "_id"

.field protected static final COLUMN_MNO_NAME:Ljava/lang/String; = "mno_name"

.field protected static final COLUMN_WFC_ERROR:Ljava/lang/String; = "wfc_error"

.field protected static final COLUMN_WIFI_CALL_REGISTRATION:Ljava/lang/String; = "wifi_call_registration"

.field protected static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS epdgstate(_id integer primary key autoincrement, epdg_available text not null, epdg_connected text not null, wfc_error text not null, wifi_call_registration text not null, mno_name text not null);"

.field protected static final TABLE_EPDG_STATE:Ljava/lang/String; = "epdgstate"

.field protected static final TAG:Ljava/lang/String; = "[IWLANCONTENTPROVIDER]"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    const-string v0, "[IWLANCONTENTPROVIDER]"

    const-string v1, "inside epdg state create table"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "CREATE TABLE IF NOT EXISTS epdgstate(_id integer primary key autoincrement, epdg_available text not null, epdg_connected text not null, wfc_error text not null, wifi_call_registration text not null, mno_name text not null);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private static getEpdgStateRow()Landroid/content/ContentValues;
    .locals 3

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v0, "map":Landroid/content/ContentValues;
    const-string v1, "[IWLANCONTENTPROVIDER]"

    const-string v2, "inside getVoWifiStateRow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "epdg_available"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "epdg_connected"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "wfc_error"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "wifi_call_registration"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "mno_name"

    const-string v2, "notset"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method protected static loadEpdgState(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    const-string v0, "Got SQLException while loading apns."

    const-string v1, "[IWLANCONTENTPROVIDER]"

    const-string v2, "inside loadEpdgState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    invoke-static {}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->getEpdgStateRow()Landroid/content/ContentValues;

    move-result-object v2

    .line 52
    .local v2, "row":Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 53
    const-string v3, "epdgstate"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v2    # "row":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    nop

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v2    # "e":Landroid/database/SQLException;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    throw v0
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside epdg state table onupgrade: version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IWLANCONTENTPROVIDER]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    nop

    .line 41
    const-string v0, "DROP TABLE IF EXISTS epdgstate"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/EpdgStateTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method
