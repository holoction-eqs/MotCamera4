.class public final Landroidx/work/impl/constraints/controllers/BatteryNotLowController;
.super Landroidx/work/impl/constraints/controllers/ConstraintController;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->$r8$classId:I

    const-string v0, "tracker"

    .line 1
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;I)V
    .locals 2

    iput p2, p0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->$r8$classId:I

    const/4 v0, 0x2

    const-string v1, "tracker"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void

    .line 4
    :cond_1
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void

    .line 5
    :cond_2
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method


# virtual methods
.method public final hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 3

    iget p0, p0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "workSpec"

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget p0, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget p0, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-boolean p0, p0, Landroidx/work/Constraints;->requiresCharging:Z

    return p0

    :pswitch_3
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-boolean p0, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    return p0

    :goto_2
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-boolean p0, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z
    .locals 3

    iget p0, p0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "value"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 2
    :goto_0
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p0

    return p0

    .line 4
    :pswitch_1
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p0

    return p0

    .line 5
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->isConstrained(Z)Z

    move-result p0

    return p0

    .line 6
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->isConstrained(Z)Z

    move-result p0

    return p0

    .line 7
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->isConstrained(Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isConstrained(Z)Z
    .locals 0

    .line 8
    iget p0, p0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    xor-int/lit8 p0, p1, 0x1

    return p0

    :pswitch_1
    xor-int/lit8 p0, p1, 0x1

    return p0

    :goto_0
    xor-int/lit8 p0, p1, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
