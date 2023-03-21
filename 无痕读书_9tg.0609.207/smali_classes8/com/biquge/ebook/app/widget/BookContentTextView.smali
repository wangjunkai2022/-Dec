.class public Lcom/biquge/ebook/app/widget/BookContentTextView;
.super Landroid/widget/LinearLayout;
.source "BookContentTextView.java"


# instance fields
.field public do:F

.field public if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 3
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/BookContentTextView;->if:I

    .line 4
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object p1

    .line 5
    iget p1, p1, Lcom/apk/ca;->else:F

    .line 6
    iput p1, p0, Lcom/biquge/ebook/app/widget/BookContentTextView;->do:F

    return-void
.end method
