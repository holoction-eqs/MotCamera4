.class public final Landroidx/work/impl/Migration_12_13;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/Migration_12_13;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/Migration_12_13;

    invoke-direct {v0}, Landroidx/work/impl/Migration_12_13;-><init>()V

    sput-object v0, Landroidx/work/impl/Migration_12_13;->INSTANCE:Landroidx/work/impl/Migration_12_13;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    const-string p0, "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL "

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "UPDATE workspec SET content_uri_triggers = x\'\' WHERE content_uri_triggers is NULL"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
