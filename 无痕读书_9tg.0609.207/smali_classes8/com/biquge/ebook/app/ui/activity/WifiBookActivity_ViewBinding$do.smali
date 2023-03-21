.class public Lcom/biquge/ebook/app/ui/activity/WifiBookActivity_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WifiBookActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/WifiBookActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/WifiBookActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
