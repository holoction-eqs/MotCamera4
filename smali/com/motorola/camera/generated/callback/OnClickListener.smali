.class public final Lcom/motorola/camera/generated/callback/OnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mListener:Ljava/lang/Object;

.field public final mSourceId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mListener:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mSourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->$r8$classId:I

    iget v0, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mSourceId:I

    iget-object p0, p0, Lcom/motorola/camera/generated/callback/OnClickListener;->mListener:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/generated/callback/OnClickListener$Listener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/generated/callback/OnClickListener$Listener;->_internalCallbackOnClick(I)V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/datepicker/YearGridAdapter;

    iget-object p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    iget p1, p1, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    iget-object v2, v1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    iget-object v3, p1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    iget-object v1, v0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_1

    move-object p1, v0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector$enumunboxing$(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
