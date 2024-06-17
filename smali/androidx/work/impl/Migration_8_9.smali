.class public final Landroidx/work/impl/Migration_8_9;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/Migration_8_9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/Migration_8_9;

    invoke-direct {v0}, Landroidx/work/impl/Migration_8_9;-><init>()V

    sput-object v0, Landroidx/work/impl/Migration_8_9;->INSTANCE:Landroidx/work/impl/Migration_8_9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    const-string p0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
