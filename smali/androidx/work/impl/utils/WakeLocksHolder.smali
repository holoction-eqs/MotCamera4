.class public final Landroidx/work/impl/utils/WakeLocksHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/utils/WakeLocksHolder;

.field public static final wakeLocks:Ljava/util/WeakHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/WakeLocksHolder;

    invoke-direct {v0}, Landroidx/work/impl/utils/WakeLocksHolder;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->INSTANCE:Landroidx/work/impl/utils/WakeLocksHolder;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->wakeLocks:Ljava/util/WeakHashMap;

    return-void
.end method
