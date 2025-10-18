#!/bin/bash

## LANGFUSE
echo "# LANGFUSE"

# Core secrets
echo "LANGFUSE_ENCRYPTION_KEY=$(openssl rand -hex 32)"
echo "LANGFUSE_SALT=$(openssl rand -base64 32)"
echo "LANGFUSE_NEXTAUTH_SECRET=$(openssl rand -base64 32)"
echo "LANGFUSE_NEXTAUTH_URL=http://localhost:3000"
echo ""

# Database
echo "LANGFUSE_POSTGRES_USER=postgres"
echo "LANGFUSE_POSTGRES_PASSWORD=$(openssl rand -base64 20)"
echo "LANGFUSE_POSTGRES_DB=langfuse"
echo ""

# ClickHouse
# echo "LANGFUSE_CLICKHOUSE_PASSWORD=$(openssl rand -base64 20)"
echo "LANGFUSE_CLICKHOUSE_PASSWORD=clickhouse"
echo "LANGFUSE_CLICKHOUSE_USER=clickhouse"
echo ""

# Redis  
echo "LANGFUSE_REDIS_AUTH=$(openssl rand -base64 20)"
echo ""

# MinIO
echo "LANGFUSE_MINIO_ROOT_PASSWORD=$(openssl rand -base64 20)"
echo ""

# S3 Secrets
echo "LANGFUSE_S3_EVENT_UPLOAD_SECRET_ACCESS_KEY=$(openssl rand -base64 32)"
echo "LANGFUSE_S3_MEDIA_UPLOAD_SECRET_ACCESS_KEY=$(openssl rand -base64 32)"
echo "LANGFUSE_S3_BATCH_EXPORT_SECRET_ACCESS_KEY=$(openssl rand -base64 32)"
echo ""

# Headless init
echo "LANGFUSE_INIT_ORG_ID=ros-atom"
echo "LANGFUSE_INIT_ORG_NAME=ROS ATOM"
echo "LANGFUSE_INIT_PROJECT_ID=service-bot"
echo "LANGFUSE_INIT_PROJECT_NAME=Automated service bot"
echo "LANGFUSE_INIT_PROJECT_PUBLIC_KEY=lf_pk_$(openssl rand -hex 16)"
echo "LANGFUSE_INIT_PROJECT_SECRET_KEY=lf_sk_$(openssl rand -hex 16)"
echo "LANGFUSE_INIT_USER_EMAIL=langfuse-admin@rosatom.ru"
echo "LANGFUSE_INIT_USER_NAME=Langfuse admin"
echo "LANGFUSE_INIT_USER_PASSWORD=$(openssl rand -base64 16)"
echo ""

## LANGFLOW
echo "# LANGFLOW"
echo "LANGFLOW_POSTGRES_PASSWORD=$(openssl rand -base64 20)"