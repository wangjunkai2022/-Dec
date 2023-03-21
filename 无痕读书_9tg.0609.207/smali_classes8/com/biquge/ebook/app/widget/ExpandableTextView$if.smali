.class public Lcom/biquge/ebook/app/widget/ExpandableTextView$if;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/ExpandableTextView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ExpandableTextView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$if;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$if;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$if;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v2, v2, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->goto:I

    return-void
.end method
