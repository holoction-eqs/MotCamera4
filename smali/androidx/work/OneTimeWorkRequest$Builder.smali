.class public final Landroidx/work/OneTimeWorkRequest$Builder;
.super Landroidx/work/WorkRequest$Builder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    const-class p1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    return-void
.end method
