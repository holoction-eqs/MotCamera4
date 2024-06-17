.class public final Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;
.super Lcom/motorola/camera/analytics/CheckInEntry;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;->$r8$classId:I

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/analytics/CheckInEntry;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0

    :goto_0
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/motorola/camera/analytics/CheckinEvent;)V
    .locals 2

    iget-object p1, p1, Lcom/motorola/camera/analytics/CheckinEvent;->mInstance:Ljava/lang/Object;

    iget v0, p0, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    check-cast v1, Ljava/lang/Long;

    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueLongMtd:Ljava/lang/reflect/Method;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :pswitch_1
    check-cast v1, Ljava/util/ArrayList;

    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueArrayListMtd:Ljava/lang/reflect/Method;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :pswitch_2
    check-cast v1, Ljava/lang/Double;

    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :try_start_2
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueDoubleMtd:Ljava/lang/reflect/Method;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_2
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :pswitch_3
    check-cast v1, Ljava/lang/Boolean;

    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    :try_start_3
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueBooleanMtd:Ljava/lang/reflect/Method;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :catch_3
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :pswitch_4
    check-cast v1, Ljava/lang/Integer;

    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    :try_start_4
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueIntMtd:Ljava/lang/reflect/Method;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    return-void

    :catch_4
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :goto_5
    check-cast v1, Ljava/lang/String;

    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    :try_start_5
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueStringMtd:Ljava/lang/reflect/Method;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    return-void

    :catch_5
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_b
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
