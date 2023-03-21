.class public abstract Lcom/apk/l80;
.super Ljava/lang/Object;
.source "TrBtnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public do:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/apk/l80;->do:J

    return-void
.end method


# virtual methods
.method public abstract do(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/apk/l80;->do:J

    sub-long v2, v0, v2

    const/16 v4, 0x1f4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/apk/l80;->do:J

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/l80;->do(Landroid/view/View;)V

    :cond_0
    return-void
.end method
