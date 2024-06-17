.class public interface abstract Landroidx/work/Operation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

.field public static final SUCCESS:Landroidx/work/Operation$State$SUCCESS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/Operation$State$SUCCESS;

    invoke-direct {v0}, Landroidx/work/Operation$State$SUCCESS;-><init>()V

    sput-object v0, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    new-instance v0, Landroidx/work/Operation$State$IN_PROGRESS;

    invoke-direct {v0}, Landroidx/work/Operation$State$IN_PROGRESS;-><init>()V

    sput-object v0, Landroidx/work/Operation;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    return-void
.end method
