.class public final Landroidx/work/OneTimeWorkRequest;
.super Landroidx/work/WorkRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/work/OneTimeWorkRequest$Builder;)V
    .locals 2

    iget-object v0, p1, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object p1, p1, Landroidx/work/WorkRequest$Builder;->tags:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/HashSet;)V

    return-void
.end method
