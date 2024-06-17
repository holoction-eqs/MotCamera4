.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/Toolbar$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/Toolbar$1;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$1:I

    iput p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/Toolbar$1;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    const-string v2, "next_job_scheduler_id"

    invoke-static {v1, v2}, Landroidx/media3/common/Format$1;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$1:I

    if-gt v3, v1, :cond_0

    iget p0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    if-gt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/device/CameraService;

    move-result-object p0

    new-instance v1, Landroidx/work/impl/model/Preference;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/CameraService;->insertPreference(Landroidx/work/impl/model/Preference;)V

    move v1, v3

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
