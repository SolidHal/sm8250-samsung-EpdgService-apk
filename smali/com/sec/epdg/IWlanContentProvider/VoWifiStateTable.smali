.class Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;
.super Ljava/lang/Object;
.source "VoWifiStateTable.java"


# static fields
.field protected static final COLUMN_ID:Ljava/lang/String; = "_id"

.field protected static final COLUMN_PROFILE_CHANGED_BYUSER:Ljava/lang/String; = "profile_changed_byuser"

.field protected static final COLUMN_WIFI_CALL_USER_SETTING:Ljava/lang/String; = "wifi_call_user_setting"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS vowifistate(_id integer primary key autoincrement, wifi_call_user_setting text not null, profile_changed_byuser text not null);"

.field protected static final TABLE_VOWIFISTATE:Ljava/lang/String; = "vowifistate"

.field private static final TAG:Ljava/lang/String; = "[IWLANCONTENTPROVIDER]"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    const-string v0, "CREATE TABLE IF NOT EXISTS vowifistate(_id integer primary key autoincrement, wifi_call_user_setting text not null, profile_changed_byuser text not null);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private static getVoWifiStateRow(Z)Landroid/content/ContentValues;
    .locals 3
    .param p0, "init"    # Z

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "map":Landroid/content/ContentValues;
    const-string v1, "wifi_call_user_setting"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "profile_changed_byuser"

    if-eqz p0, :cond_0

    .line 61
    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-object v0
.end method

.method protected static loadVoWifiState(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "init"    # Z

    .line 41
    const-string v0, "Got SQLException while loading apns."

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    invoke-static {p1}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->getVoWifiStateRow(Z)Landroid/content/ContentValues;

    move-result-object v1

    .line 44
    .local v1, "row":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 45
    const-string v2, "vowifistate"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v1    # "row":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 53
    nop

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "[IWLANCONTENTPROVIDER]"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "init":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "init":Z
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 53
    throw v0
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .line 30
    nop

    .line 32
    const-class v0, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Creating new database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "DROP TABLE IF EXISTS vowifistate"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lcom/sec/epdg/IWlanContentProvider/VoWifiStateTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    return-void
.end method
