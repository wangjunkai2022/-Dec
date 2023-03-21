.class public Lcom/manhua/ui/activity/ComicReadActivity$new$do;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadActivity$new;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity$new;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$new$do;->do:Lcom/manhua/ui/activity/ComicReadActivity$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$new$do;->do:Lcom/manhua/ui/activity/ComicReadActivity$new;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity$new;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 3
    invoke-virtual {p1}, Lcom/apk/f00;->i()V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$new$do;->do:Lcom/manhua/ui/activity/ComicReadActivity$new;

    iget-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity$new;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-wide v1, p1, Lcom/manhua/ui/activity/ComicReadActivity$new;->do:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/manhua/ui/activity/ComicReadActivity;->v(J)V

    return-void
.end method
