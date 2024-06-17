.class public final Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_END:J

.field public static final DEFAULT_START:J


# instance fields
.field public final end:J

.field public final firstDayOfWeek:I

.field public openAt:Ljava/lang/Long;

.field public final start:J

.field public final validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v2}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    const/16 v0, 0x834

    const/16 v2, 0xb

    invoke-static {v0, v2}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v0, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    iget-object v0, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    iget-object v0, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    iget v0, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    iput v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->firstDayOfWeek:I

    iget-object p1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method
