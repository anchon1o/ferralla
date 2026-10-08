-- Ferralla! · ranking do reto diario (proxecto Supabase: xogos)
create table if not exists public.fer_reto (
  id bigserial primary key,
  dia date not null,
  dispositivo text not null,
  alcume text not null check (char_length(alcume) between 1 and 16),
  puntos int not null check (puntos between 0 and 200),
  robot text,
  creado timestamptz not null default now(),
  unique (dia, dispositivo)
);
alter table public.fer_reto enable row level security;
create policy "fer_reto ler" on public.fer_reto for select using (true);
create policy "fer_reto inserir" on public.fer_reto for insert
  with check (dia between current_date - 1 and current_date + 1);
create policy "fer_reto actualizar" on public.fer_reto for update
  using (dia between current_date - 1 and current_date + 1)
  with check (dia between current_date - 1 and current_date + 1);
create index if not exists fer_reto_dia_puntos on public.fer_reto (dia, puntos desc);
