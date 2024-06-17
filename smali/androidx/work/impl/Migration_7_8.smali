.class public final Landroidx/work/impl/Migration_7_8;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/Migration_7_8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/Migration_7_8;

    invoke-direct {v0}, Landroidx/work/impl/Migration_7_8;-><init>()V

    sput-object v0, Landroidx/work/impl/Migration_7_8;->INSTANCE:Landroidx/work/impl/Migration_7_8;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    const-string p0, "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    "

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
