.class public final Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

.field public final synthetic val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->this$0:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-lt p3, p4, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p4

    iget-object p2, p2, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    add-int/2addr p4, p2

    add-int/lit8 p4, p4, -0x1

    if-gt p3, p4, :cond_0

    move p2, p5

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;->this$0:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onDayClickListener:Lcom/google/common/base/Joiner;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p3, p3, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p3, p3, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    check-cast p3, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    iget-wide p3, p3, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move p5, v0

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method
