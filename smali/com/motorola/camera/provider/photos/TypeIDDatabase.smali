.class public final Lcom/motorola/camera/provider/photos/TypeIDDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static volatile mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "bestshot_provider.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;
    .locals 2

    sget-object v0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    invoke-direct {v1, p0}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE special_types_mapper (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS special_types_mapper"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE special_types_mapper (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
