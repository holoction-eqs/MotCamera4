.class public final Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;->$r8$classId:I

    invoke-direct {p0, v0}, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V
    .locals 0

    .line 3
    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/Thread;

    sget v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->$r8$clinit:I

    const-string v0, "CalibrationDataFragment"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/Thread;

    sget v0, Lcom/motorola/camera/fragments/ReportFragment;->$r8$clinit:I

    const-string v0, "ReportFragment"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    const-string v0, "MeasureKpi"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
