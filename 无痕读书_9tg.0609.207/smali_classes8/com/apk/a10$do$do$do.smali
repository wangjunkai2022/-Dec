.class public Lcom/apk/a10$do$do$do;
.super Ljava/lang/Object;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/a10$do$do;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/a10$do$do;


# direct methods
.method public constructor <init>(Lcom/apk/a10$do$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a10$do$do$do;->do:Lcom/apk/a10$do$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/a10$do$do$do;->do:Lcom/apk/a10$do$do;

    iget-object v0, v0, Lcom/apk/a10$do$do;->do:Lcom/apk/a10$do;

    iget-object v0, v0, Lcom/apk/a10$do;->do:Lcom/apk/a10;

    iget-object v0, v0, Lcom/apk/a10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-virtual {v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->finish()V

    return-void
.end method
