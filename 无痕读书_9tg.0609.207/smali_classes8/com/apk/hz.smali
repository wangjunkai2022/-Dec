.class public Lcom/apk/hz;
.super Lcom/apk/bg;
.source "ComicRecyclerViewAdapter.java"


# instance fields
.field public final synthetic case:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

.field public final synthetic do:Lcom/biquge/ebook/app/bean/BookChapter;

.field public final synthetic for:Landroid/widget/TextView;

.field public final synthetic if:Lcom/manhua/ui/widget/ComicImageLayout;

.field public final synthetic new:Landroid/widget/ProgressBar;

.field public final synthetic try:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;Lcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hz;->case:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    iput-object p2, p0, Lcom/apk/hz;->do:Lcom/biquge/ebook/app/bean/BookChapter;

    iput-object p3, p0, Lcom/apk/hz;->if:Lcom/manhua/ui/widget/ComicImageLayout;

    iput-object p4, p0, Lcom/apk/hz;->for:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/apk/hz;->new:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lcom/apk/hz;->try:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apk/hz;->case:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    iget-object v2, p0, Lcom/apk/hz;->do:Lcom/biquge/ebook/app/bean/BookChapter;

    iget-object v3, p0, Lcom/apk/hz;->if:Lcom/manhua/ui/widget/ComicImageLayout;

    iget-object v4, p0, Lcom/apk/hz;->for:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/apk/hz;->new:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/apk/hz;->try:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

    return-void
.end method
