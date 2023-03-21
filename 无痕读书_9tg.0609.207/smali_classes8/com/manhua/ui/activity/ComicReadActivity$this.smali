.class public Lcom/manhua/ui/activity/ComicReadActivity$this;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/manhua/ui/widget/PublicLoadingView$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$this;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$this;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/f00;->h()V

    :cond_0
    return-void
.end method
