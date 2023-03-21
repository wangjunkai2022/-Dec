.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$case;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/et;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$case;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/yg;->try:Z

    :cond_0
    return-void
.end method
